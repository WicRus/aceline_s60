#!/bin/bash
set -e
. cfg

echo "For cleaning git repos befor patches use -f flag"
[ "$1" = "-f" ] && FORCE_CLEAN=1

mkdir -p $SDK_PATH
mkdir -p $BIN_PATH
mkdir -p $ARCH_IMG_DIR

pushd $SDK_PATH
    # git clone git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
    __git_clone_pull https://kernel.googlesource.com/pub/scm/linux/kernel/git/torvalds/linux.git $FORCE_CLEAN
    __git_clone_pull git://git.denx.de/u-boot.git $FORCE_CLEAN
    __git_clone_pull https://github.com/fifteenhex/xradio.git $FORCE_CLEAN
    pushd u-boot
        git apply $CUR_PATH/patches/uboot.patch
        git apply $CUR_PATH/patches/uboot_makefile.patch
    popd
    pushd linux
        git apply $CUR_PATH/patches/kernel.patch
        git apply $CUR_PATH/patches/kernel_makefile.patch
        cat $CUR_PATH/patches/arch_ARM.config > .config
        sed -i "s/^.*CONFIG_VIDEO_OV8865.*$/CONFIG_VIDEO_OV8865=m/" .config
        sed -i "s/^.*CONFIG_VIDEO_SUN6I_ISP.*$/CONFIG_VIDEO_SUN6I_ISP=m/" .config
        sed -i "s/^.*CONFIG_VIDEO_SUN6I_MIPI_CSI2.*$/CONFIG_VIDEO_SUN6I_MIPI_CSI2=m/" .config
    popd
popd

pushd $ARCH_IMG_DIR
    wget -q -N "${ARCH_MD5_URL}"
    if [ ! -f "${ARCH_IMG_NAME}" ]; then
        echo "Downloading ${ARCH_IMG_NAME}"
        wget -q -N "${ARCH_IMG_URL}"
        md5sum -c "${ARCH_MD5_NAME}"
    elif md5sum -c "${ARCH_MD5_NAME}" ; then
        echo "${ARCH_IMG_NAME} checked!"
    else
        echo "Cached ${ARCH_IMG_NAME} did not match MD5 of latest image, downloading"
        wget -q -N "${ARCH_IMG_URL}"
        md5sum -c "${ARCH_MD5_NAME}"
    fi
popd
