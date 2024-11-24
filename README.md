 # Aceline S60 arch linux with mainline kernel installation guide
 [Aceline S60](https://www.google.com/search?q=Aceline+S60) hardware:
 * SoC [Allwinner V3](https://linux-sunxi.org/V3)
 * Sensor [OV8865](https://www.ovt.com/products/ov8865/)
 * Power unit [AXP209](https://linux-sunxi.org/AXP209)
 * RAM 256MB DDR3
 * ROM 8MB SPI NAND
 * WiFi [XR819](https://linux-sunxi.org/Wifi)
 * SDMMC, miniHDMI, microphone, speaker, LCD, microUSB

 ## Explore
 Look around. Learn docs, read scrpits and configs

 ## Preparation
 * [Install docker](https://docs.docker.com/engine/install/)
 * Clone this repository and go inside
 * Create docker container and download kernel, uboot, arch image
    ```bash
    ./docker_create_container.sh
    ./docker_prepare.sh
    ```

 ## Inside docker container
 * Start docker container
    ```bash
    ./docker_bash.sh
    ```

 ### Compile source codes
 * Compile uboot, kernel, dtb
    ```bash
    ./compile_uboot.sh
    ./compile_kernel.sh
    ./compile_dtb.sh
    ```

 ### Build image
 * Run imager creator
    ```bash
    ./arch-arm-img-create.sh
    ```
 * Chroot inside image for additional manual changes
    ```bash
    ./arch-arm-img-edit.sh
    ```

 ## Installation
 * Flash with dd or rufus
     ```bash
    dd if=sdk/binary/ArchLinuxARM-armv7-latest.img of=/dev/sdX bs=1M oflag=dsync status=progress; sync
    ```

 ## Documentations
 * [PCB Photos](docs/photos.md)
 * [Stock Android bootlog](docs/android_boot_log.md)
 * [Stock Android gpio](docs/android_gpio_debug_cat.md)
 * [Stock Android regulators](docs/android_regulators_cat.md)
 * [Stock Android script.fex](docs/android_script_fex.md)
 * [Arch regulators](docs/arch_regulators_cat.md)
 * [Usefull comamnds](docs/cmds.md)
 * [Usefull links](docs/links.md)
 * [Binary data](../../releases)
   * [Andriod backup](../../releases/download/Inital/android_backup.tar.xz)
   * [Andriod rootfs](../../releases/download/Inital/android_rootfs.tar.xz)
   * [Datasheets](../../releases/download/Inital/datasheets.tar.xz)