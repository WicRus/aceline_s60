#!/bin/bash
. cfg
set -e

WIFI_SSID="$1"
WIFI_PASS="$2"

# Keep in mind we only have a chroot, not a fully running system so you are partially limited in what you can do.
# For example you cannot enable a service with systemctl enable SOMESERVICE,
# instead you have to create the symlinks your self
# ln -sf /usr/lib/systemd/system/SOMESERVICE.service /etc/systemd/system/multi-user.target.wants/.

function create_img {
    # supress parted udevadm call
    touch /bin/udevadm && chmod +x /bin/udevadm

    truncate -s 1900M "${ARCH_TARGET_IMAGE}"
    losetup ${DEV_LOOP} "${ARCH_TARGET_IMAGE}" -P
    parted -s ${DEV_LOOP} mklabel msdos
    parted -s ${DEV_LOOP} mkpart primary ext4 -a optimal -- 10MiB 100%
    parted -s ${DEV_LOOP} set 1 boot on
    # parted -s ${DEV_LOOP} print
    mkfs.ext4 -F -L rootfs -b 4096 -E stride=4,stripe_width=1024 ${DEV_LOOP}p1

    mkdir -p ${MNT_PATH}
    mount ${DEV_LOOP}p1 ${MNT_PATH}
    bsdtar -xpf "${ARCH_IMG_PATH}" -C ${MNT_PATH}
    umount ${MNT_PATH}
    losetup -d ${DEV_LOOP}

    rm /bin/udevadm
}

function config_img {
    sed -i '/ParallelDownloads/s/^#//g' ${MNT_PATH}/etc/pacman.conf
    sed -i "/^# .*IgnorePkg.*$/a IgnorePkg = linux-firmware linux-armv7" ${MNT_PATH}/etc/pacman.conf
    sed -i '/^#/!s/^/#/g' ${MNT_PATH}/etc/fstab
    echo s60 > ${MNT_PATH}/etc/hostname
    echo "UUID=${DISC_UUID} / ext4 errors=remount-ro 0 1" >> ${MNT_PATH}/etc/fstab
    echo "ll='ls -la --color=auto'" >> ${MNT_PATH}/etc/bash.bashrc
    echo "stty cols 132" >> ${MNT_PATH}/etc/bash.bashrc

    chroot ${MNT_PATH} bash -c "
    pacman-key --init
    pacman-key --populate archlinuxarm
    pacman-key --refresh-keys
    pacman -Syu --noconfirm --disable-download-timeout \
                archlinux-keyring wpa_supplicant ifplugd crda dialog \
                dtc openssl openssl-1.1 bc sudo uboot-tools openssh mc v4l-utils
    pacman -Scc --noconfirm
    pacman -Qlq linux-firmware | grep -v '/$' | xargs -r -d '\n' rm
    ln -sf /usr/lib/systemd/system/netctl-auto@.service /etc/systemd/system/multi-user.target.wants/netctl-auto@wlan0.service
    ln -sf /usr/lib/systemd/system/netctl-ifplugd@.service /etc/systemd/system/multi-user.target.wants/netctl-ifplugd@eth0.service
    passwd -d alarm
    "

    echo "%wheel ALL=(ALL) ALL" >> ${MNT_PATH}/etc/sudoers.d/wheel
    cat << EOF > ${MNT_PATH}/etc/netctl/wlan0-SSID
Description='${WIFI_SSID}'
Interface=wlan0
Connection=wireless
Security=wpa
ESSID="${WIFI_SSID}"
IP=dhcp
Key="${WIFI_PASS}"
EOF

    mkdir -p ${MNT_PATH}/boot/extlinux/
    cat << EOF > ${MNT_PATH}/boot/extlinux/extlinux.conf
LABEL Arch
    LINUX /boot/zImage
    FDT /boot/sun8i-v3-dv8000-ov8865.dtb
    APPEND root=PARTUUID=${DISC_PARTUUID} rootwait console=\${console} audit=0
EOF
    rm -r ${MNT_PATH}/usr/lib/modules/*
    cp -a ${FWS_PATH}/* ${MNT_PATH}/lib/firmware/
    cp -a ${KCUR_PATH}/* ${MNT_PATH}
    cp $BIN_PATH/sun8i-v3-dv8000-ov8865.dtb ${MNT_PATH}/boot
    dd if=$SDK_PATH/u-boot/u-boot-sunxi-with-spl.bin of=${DEV_LOOP} bs=1024 seek=8
}

__get_sudo
create_img
__init_arch_img
config_img
__deinit_arch_img