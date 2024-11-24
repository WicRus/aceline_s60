## Usefull cmds
### Uboot
```bash
# manual load and run with ramdisk
echo $kernel_addr_r $ramdisk_addr_r:$filesize $fdt_addr_r
load mmc 0:1 $ramdisk_addr_r uInitrd
load mmc 0:1 $fdt_addr_r sun8i-v3-sl631-imx179.dtb
load mmc 0:1 $kernel_addr_r vmlinuz
load mmc 0:1 $ramdisk_addr_r initrd.img
setenv bootm_boot_mode sec
bootz $kernel_addr_r $ramdisk_addr_r:$filesize $fdt_addr_r

# dump and crc32 check
save mmc 0:1 0x40000000 /home/alarm/rez 16777216
cmp.b 0x40000000 0x41000000 0x1000000
crc32 0x40000000 16777216

# manual load and run
load mmc 0:1 $kernel_addr_r /boot/zImage
setenv bootargs root=PARTUUID=82287ba3-01 rootwait console=ttyS0,115200 audit=0
load mmc 0:1 0x41900000 /boot/sun8i-v3-dv8000-ov8865.dtb
bootz $kernel_addr_r - 0x41900000
```

### Build
```bash
mkimage -A arm -O linux -T kernel -C none -a 0x41000000 -e 0x41000000 -n "Linux kernel" -d zImage uImage
```

### Onboard debug
```bash
# dump pinout
cat /sys/kernel/debug/pinctrl/*/pinmux-pins
cat /sys/kernel/debug/pinctrl/1c20800.pinctrl/pinmux-pins
cat /sys/kernel/debug/pinctrl/1c20800.pinctrl/pinmux-functions
cat /sys/kernel/debug/gpio

# scan i2c-1
i2cdetect -y 1

# get one frame from/dev/video0
v4l2-ctl -d /dev/video0 --stream-mmap --stream-to=AAA.raw --stream-count=1
# or
fswebcam -S 5 -d /dev/video0 -p YUV420P -r 1920x1080 test.jpg

# v4l2 devices info
v4l2-ctl --list-devices
v4l2-ctl --list-formats-ext
v4l2-ctl -L
v4l2-ctl -d /dev/v4l-subdev3 -L

# Config v4l2 device
# set format, dont know how it works
media-ctl --set-v4l2 '5:0[fmt:UYVY8_2X8/1920x1080@1/15]'
# config format capture device /dev/video0
v4l2-ctl -d /dev/video0 --set-fmt-video width=800,height=600,pixelformat=BG10
# read format from /dev/video0
v4l2-ctl -d /dev/video0 --get-fmt-video
```
### Pipeline config for V3+ov8865
```bash
# config v4l2 pipline
media-ctl -d /dev/media0 --set-v4l2 "'ov8865 1-006c':0[fmt:SBGGR10_1X10/800x600@1/30 field:none]"
media-ctl -d /dev/media0 --set-v4l2 "'sun6i-mipi-csi2':0[fmt:SBGGR10_1X10/800x600]"
media-ctl -d /dev/media0 --set-v4l2 "'sun6i-mipi-csi2':1[fmt:SBGGR10_1X10/800x600]"
media-ctl -d /dev/media0 --set-v4l2 "'sun6i-csi-bridge':0[fmt:SBGGR10_1X10/800x600]"
media-ctl -d /dev/media0 --set-v4l2 "'sun6i-csi-bridge':1[fmt:SBGGR10_1X10/800x600]"

# config capture devices
v4l2-ctl -d /dev/video0 --set-fmt-video width=800,height=600,pixelformat=BG10
v4l2-ctl -d /dev/video1 --set-fmt-video width=800,height=600

# connect pipline
media-ctl -l "'ov8865 1-006c':0 -> 'sun6i-mipi-csi2':0[1]"
media-ctl -l "'sun6i-mipi-csi2':1 -> 'sun6i-csi-bridge':0[1]"
media-ctl -l "'sun6i-csi-bridge':1 -> 'sun6i-csi-capture':0[1]"
media-ctl -l "'sun6i-csi-bridge':1 -> 'sun6i-isp-proc':0[1]"
media-ctl -l "'sun6i-isp-params':0 -> 'sun6i-isp-proc':1[1]"
media-ctl -l "'sun6i-isp-proc':2 -> 'sun6i-isp-capture':0[1]"
# get raw frame
v4l2-ctl -d /dev/video0 --stream-mmap --stream-to=AAA.raw --stream-count=1
```