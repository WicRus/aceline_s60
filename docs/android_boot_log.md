### Stock Android bootlog
```bash
U-Boot 2011.09-rc1-dirty (Nov 02 2020 - 21:57:11) Allwinner Technology

[      0.101]version: 1.1.0
[      0.103]uboot commit : 2bee0c86579f3360f742b7466afe6cac5d21e326
 
ready
set power on vol to default
vbus pc exist, limit to pc
no key input
dram_para_set start
dram_para_set end
sunxi spinor is initing...OK
In:    Out:   Err:   
read boot or recovery all
[    0.000000] Booting Linux on physical CPU 0
[    0.000000] Linux version 3.4.39 (boss@boss-MS-7A70) (gcc version 4.6.3 20120201 (prerelease) (crosstool-NG linaro-1.13.1-2012.02-20120222 - Linaro GCC 2012.02) ) #331 Sat Apr 24 16:56:21 CST 2021
[    0.000000] CPU: ARMv7 Processor [410fc075] revision 5 (ARMv7), cr=10c5387d
[    0.000000] CPU: PIPT / VIPT nonaliasing data cache, VIPT aliasing instruction cache
[    0.000000] Machine: sun8i
[    0.000000] Ignoring unrecognised tag 0x00000000
[    0.000000] Initialized persistent memory from 41d20800-41d307ff
[    0.000000] Memory policy: ECC disabled, Data cache writeback
[    0.000000] On node 0 totalpages: 65536
[    0.000000] free_area_init_node: node 0, pgdat c04b782c, node_mem_map c0552000
[    0.000000]   Normal zone: 512 pages used for memmap
[    0.000000]   Normal zone: 0 pages reserved
[    0.000000]   Normal zone: 65024 pages, LIFO batch:15
[    0.000000] script_init enter!
[    0.000000] script_init exit!
[    0.000000] pcpu-alloc: s0 r0 d32768 u32768 alloc=1*32768
[    0.000000] pcpu-alloc: [0] 0 
[    0.000000] Built 1 zonelists in Zone order, mobility grouping on.  Total pages: 65024
[    0.000000] Kernel command line: console=ttyS0,115200 root=/dev/nor1 init=/init loglevel=8 partitions=boot@spinorp0:system@spinorp1:cfg@spinorp2:boot_logo@spinorp3:shutdown_logo@spinorp4:env@spinorp5:private@spinorp6:UDISK@spinorp7 mac_addr= uid=8882f574-3e53-45 kmemleak=on boot_type=3 fb_base=0x41b00000 config_size=38092
[    0.000000] PID hash table entries: 1024 (order: 0, 4096 bytes)
[    0.000000] Dentry cache hash table entries: 32768 (order: 5, 131072 bytes)
[    0.000000] Inode-cache hash table entries: 16384 (order: 4, 65536 bytes)
[    0.000000] Memory: 256MB = 256MB total
[    0.000000] Memory: 161848k/161848k available, 100296k reserved, 0K highmem
[    0.000000] Virtual kernel memory layout:
[    0.000000]     vector  : 0xffff0000 - 0xffff1000   (   4 kB)
[    0.000000]     fixmap  : 0xfff00000 - 0xfffe0000   ( 896 kB)
[    0.000000]     vmalloc : 0xd0800000 - 0xff000000   ( 744 MB)
[    0.000000]     lowmem  : 0xc0000000 - 0xd0000000   ( 256 MB)
[    0.000000]     modules : 0xbf000000 - 0xc0000000   (  16 MB)
[    0.000000]       .text : 0xc0008000 - 0xc0453000   (4396 kB)
[    0.000000]       .init : 0xc0453000 - 0xc0476000   ( 140 kB)
[    0.000000]       .data : 0xc0476000 - 0xc04b7f40   ( 264 kB)
[    0.000000]        .bss : 0xc04b7f64 - 0xc05510d8   ( 613 kB)
[    0.000000] NR_IRQS:544
[    0.000000] 524 ahb1 set parent pll_periph0d2
[    0.000000] Architected local timer running at 24.00MHz.
[    0.000000] Switching to timer-based delay loop
[    0.000000] sched_clock: 32 bits at 24MHz, resolution 41ns, wraps every 178956ms
[    0.000000] Console: colour dummy device 80x30
[    0.000125] Calibrating delay loop (skipped), value calculated using timer frequency.. 4800.00 BogoMIPS (lpj=24000000)
[    0.000144] pid_max: default: 32768 minimum: 301
[    0.000266] Mount-cache hash table entries: 512
[    0.000691] CPU: Testing write buffer coherency: ok
[    0.000883] Setting up static identity map for 0x40344cc8 - 0x40344cfc
[    0.001406] devtmpfs: initialized
[    0.002819] VFP support v0.3: implementor 41 architecture 2 part 30 variant 7 rev 5
[    0.002943] pinctrl core: initialized pinctrl subsystem
[    0.003292] NET: Registered protocol family 16
[    0.003578] DMA: preallocated 128 KiB pool for atomic coherent allocations
[    0.003615] script_sysfs_init success
[    0.003642] sunxi_dump_init success
[    0.004289] gpiochip_add: registered GPIOs 0 to 223 on device: sunxi-pinctrl
[    0.005373] sunxi-pinctrl sunxi-pinctrl: initialized sunXi PIO driver
[    0.005648] gpiochip_add: registered GPIOs 1024 to 1031 on device: axp-pinctrl
[    0.006338] persistent_ram: uncorrectable error in header
[    0.006351] persistent_ram: no valid data in buffer (sig = 0xeea7ffe7)
[    0.011459] console [ram-1] enabled
[    0.011766] [sunxi-module]: [sunxi-module.0] probe success
[    0.011996] axp driver uning configuration failed(839)
[    0.012073] axp driver uning configuration failed(845)
[    0.012204] axp driver uning configuration failed(851)
[    0.012277] axp driver uning configuration failed(858)
[    0.012508] script config pll_isp to 480 Mhz
[    0.012600] Not Found clk pll_video in script 
[    0.012678] script config pll_ve to 480 Mhz
[    0.012818] Not Found clk pll_periph0 in script 
[    0.012891] Not Found clk pll_de in script 
[    0.013019] sunxi_default_clk_init
[    0.013089] try to set pll6ahb1 to 200000000
[    0.013162] Error not get clk pll6ahb1
[    0.013295] Error not get clk pll6ahb1try to set ahb1 to 200000000
[    0.013441] try to set apb1 to 100000000
[    0.013716] ===fe3o4==== sunxi_root_procfs_attach ret:0
[    0.016468] bio: create slab <bio-0> at 0
[    0.016754] pwm module init!
[    0.017073] get pwm0 gpio list fail!
[    0.018198] usbcore: registered new interface driver usbfs
[    0.018334] usbcore: registered new interface driver hub
[    0.018557] usbcore: registered new device driver usb
[    0.018747] twi_chan_cfg()341 - [twi0] has no twi_speed!
[    0.018882] twi_chan_cfg()352 - [twi0] has no twi_regulator.
[    0.018958] twi_chan_cfg()341 - [twi1] has no twi_speed!
[    0.019090] twi_chan_cfg()352 - [twi1] has no twi_regulator.
[    0.020124] axp20_board 0-0034: AXP (CHIP ID: 0x41) detected
[    0.020867] Linux video capture interface: v2.00
[    0.021215] gpiochip_add: gpios 1024..1028 (axp_pin) failed to register
[    0.021215] axp pinctrl used,skip
[    0.021215] Advanced Linux Sound Architecture Driver Version 1.0.25.
[    0.021218] cfg80211: Calling CRDA to update world regulatory domain
[    0.021651] Switching to clocksource arch_sys_counter
[    0.025059] NET: Registered protocol family 2
[    0.025410] IP route cache hash table entries: 2048 (order: 1, 8192 bytes)
[    0.025858] TCP established hash table entries: 8192 (order: 4, 65536 bytes)
[    0.026116] TCP bind hash table entries: 8192 (order: 3, 32768 bytes)
[    0.026308] TCP: Hash tables configured (established 8192 bind 8192)
[    0.026382] TCP: reno registered
[    0.026456] UDP hash table entries: 256 (order: 0, 4096 bytes)
[    0.026596] UDP-Lite hash table entries: 256 (order: 0, 4096 bytes)
[    0.026956] NET: Registered protocol family 1
[    0.027196] Unpacking initramfs...
[    0.040986] Freeing initrd memory: 224K
[    0.041289] sunxi_reg_init enter
[    0.042720] squashfs: version 4.0 (2009/01/31) Phillip Lougher
[    0.042839] jffs2: version 2.2. (NAND) (SUMMARY)  © 2001-2006 Red Hat, Inc.
[    0.043131] msgmni has been set to 316
[    0.043949] io scheduler noop registered
[    0.044089] io scheduler deadline registered
[    0.044219] io scheduler cfq registered (default)
[    0.044294] [DISP]disp_module_init
[    0.044732] cmdline,disp=
[    0.045259] disp_init_rotation_sw
[    0.045353] @@@rot-degree=1, scn_size[320,240]
[    0.045523] disp_rot_sw_set_manager,1246
[    0.054691] rot_degree =1, w=320, h=240
[    0.069899] [DISP] disp_sys_gpio_set_value,line:374:OSAL_GPIO_DevWRITE_ONEPIN_DATA, hdl is NULL
[    0.070526] [DISP]disp_module_init finish
[    0.070793] sw_uart_get_devinfo()1503 - uart1 has no uart_regulator.
[    0.071228] uart1: ttyS0 at MMIO 0x1c28400 (irq = 33) is a SUNXI
[    0.071370] sw_uart_pm()890 - uart1 clk is already enable
[    0.071452] sw_console_setup()1233 - console setup baud 115200 parity n bits 8, flow n
[    0.263854] console [ttyS0] enabled
[    0.815647] sunxi_spi_chan_cfg()1376 - [spi-0] has no spi_regulator.
[    0.823269] spi spi0: master is unqueued, this is deprecated
[    0.829816] NorFlash ID:  12018-4d01
[    0.833892] m25p80 spi0.0: s25fl129p1 (16384 Kbytes)
[    0.842285] @@@[debug_jaosn]: Invalid partitions count: 4 9
[    0.848901] Creating 8 MTD partitions on "(null)":
[    0.854386] 0x000000000000-0x000000040000 : "uboot"
[    0.860503] 0x000000040000-0x0000002c0000 : "boot"
[    0.866395] 0x0000002c0000-0x000000740000 : "system"
[    0.872530] 0x000000740000-0x000000790000 : "cfg"
[    0.878306] 0x000000790000-0x0000007a0000 : "boot_logo"
[    0.884745] 0x0000007a0000-0x0000007b0000 : "shutdown_logo"
[    0.891510] 0x0000007b0000-0x0000007c0000 : "env"
[    0.897327] 0x0000007c0000-0x0000007d0000 : "private"
[    0.903753] file system registered
[    0.908447] android_usb gadget: Mass Storage Function, version: 2009/09/11
[    0.916253] android_usb gadget: Number of LUNs=1
[    0.921461] [fangjianjun]:this is for lcd_panel_ili9335_inittest +++++++++++++
[    0.929607]  lun0: LUN: removable file: (no medium)
[    0.935415] android_usb gadget: android_usb ready
[    0.940753] sunxikbd_script_init: key para not found, used default para. 
[    0.949492] sunxi-rtc sunxi-rtc: rtc core: registered sunxi-rtc as rtc0
[    0.957050] sunxi cedar version 0.1 
[    0.961129] [cedar]: install start!!!
[    0.965470] [cedar]: install end!!!
[    0.975828] pmu_pekoff_time = 6000
[    0.979673] pmu_pekoff_en = 1
[    0.983100] pmu_peklong_time = 1500
[    0.987030] pmu_pekon_time = 1000
[    0.990773] pmu_pwrok_time = 64
[    0.994374] pmu_pwrnoe_time = 2000
[    0.998204] pmu_hot_shutdown = 1
[    1.002695] POWER20_PEK_SET:2234-->0x9d
[    1.007431] POWER20_PEK_SET:2245-->0x9d
[    1.012227] POWER20_PEK_SET:2254-->0x9d
[    1.016957] POWER20_PEK_SET:2265-->0x9d
[    1.027271] POWER20_PEK_SET:2277-->0x9d
[    1.032074] POWER20_HOTOVER_CTL:2286-->0x2d
[    1.044177] step1 : gsensor_fetch_sysconfig_para
[    1.049434] step2 : gsensor_fetch_sysconfig_para
[    1.054656] step3 : gsensor_fetch_sysconfig_para
[    1.059840] step4 : mir3da_init
[    1.063578] i2c-core: driver [da380] using legacy suspend method
[    1.070328] i2c-core: driver [da380] using legacy resume method
[    1.077026]  richard mir3da_detect: mir3da_detect:bus[0] addr[0x27]
[    1.084055]  richard mir3da_detect: mir3da_detect:bus[1] addr[0x27]
[    1.096329] sunxi_i2c_do_xfer()997 - [i2c1] incomplete xfer (status: 0x20, dev addr: 0x27)
[    1.110808] sunxi_i2c_do_xfer()997 - [i2c1] incomplete xfer (status: 0x20, dev addr: 0x27)
[    1.125226] sunxi_i2c_do_xfer()997 - [i2c1] incomplete xfer (status: 0x20, dev addr: 0x27)
[    1.134524] [MIR3DA] Cant find Mir3da gsensor!!
[    1.139712] sunxi_wdt_init_module: sunxi WatchDog Timer Driver v1.0
[    1.146945] sunxi_wdt_probe: devm_ioremap return wdt_reg 0xf1c20ca0, res->start 0x01c20ca0, res->end 0x01c20cbf
[    1.158224] sunxi_wdt_probe: initialized (g_timeout=16s, g_nowayout=0)
[    1.165816] wdt_enable, write reg 0xf1c20cb8 val 0x00000000
[    1.172130] wdt_set_tmout, write 0x000000b0 to mode reg 0xf1c20cb8, actual timeout 16 sec
[    1.181469] [cpu_freq] ERR:get cpu extremity frequency from sysconfig failed, use max_freq
[    1.190928] [mmc]: SD/MMC/SDIO Host Controller Driver(v1.114 2015-6-2 10:21) Compiled in Oct 27 2020 at 22:32:33
[    1.202386] [mmc]: get mmc0s sdc_power failed
[    1.207452] [mmc]: get mmc1s sdc_power failed
[    1.212461] [mmc]: MMC host used card: 0x3, boot card: 0x0, io_card 2
[    1.221105] [mmc]: sdc0 set ios: clk 0Hz bm OD pm OFF vdd 3.3V width 1 timing LEGACY(SDR12) dt B
[    1.234097] [mmc]: sdc1 set ios: clk 0Hz bm OD pm OFF vdd 3.3V width 1 timing LEGACY(SDR12) dt B
[    1.246869] no led_3, ignore it!
[    1.250534] no led_4, ignore it!
[    1.254233] no led_5, ignore it!
[    1.257871] no led_6, ignore it!
[    1.261519] no led_7, ignore it!
[    1.265384] Registered led device: led_0
[    1.269872] Registered led device: led_1
[    1.274698] Registered led device: led_2
[    1.279367] usbcore: registered new interface driver usbhid
[    1.285634] usbhid: USB HID core driver
[    1.290379] ashmem: initialized
[    1.294062] logger: created 256K log 'log_main'
[    1.299217] logger: created 32K log 'log_events'
[    1.304572] logger: created 32K log 'log_radio'
[    1.309744] logger: created 32K log 'log_system'
[    1.316011] [audiocodec] mic1_mic3_used type err! 
[    1.323250] asoc: sndcodec <-> sunxi-codec mapping ok
[    1.332417] asoc: snddaudio <-> pri_dai mapping ok
[    1.338849] TCP: cubic registered
[    1.342645] Initializing XFRM netlink socket
[    1.347569] NET: Registered protocol family 10
[    1.353302] IPv6 over IPv4 tunneling driver
[    1.358551] NET: Registered protocol family 17
[    1.363764] ThumbEE CPU extension supported.
[    1.368636] Registering SWP/SWPB emulation handler
[    1.385625] [HDMI]ep952_module_init begin
[    1.390237] [ep952] hdmi_power: axp20_ldo4
[    1.394900] [DISP_I2C] hdmi_i2c_detect, get right i2c adapter, id=1
[    1.402059] [DISP_I2C] hdmi_i2c_probe
[    1.406443] ep952_thread:235
[    1.631934] sunxi-rtc sunxi-rtc: setting system clock to 1970-01-01 00:00:03 UTC (3)
[    1.641913] [rf_pm]: Did not config module_power0 in sys_config
[    1.648564] [rf_pm]: Did not config module_power1 in sys_config
[    1.655342] [rf_pm]: Did not config module_power2 in sys_config
[    1.661996] [rf_pm]: Did not config module_power3 in sys_config
[    1.668696] [rf_pm]: mod has no chip_en gpio
[    1.673504] [rf_pm]: regulator on.
[    1.677442] [rf_pm]: Get ap 32k clk out failed!
[    1.682769] [wifi_pm]: wifi gpio init is OK !!
[    1.687853] ALSA device list:
[    1.691292]   #0: audiocodec
[    1.694546]   #1: snddaudio
[    1.698041] Freeing init memory: 140K
[    1.703701] init: skipping insecure file '/default.prop'
[    1.709818] init: skipping insecure file '/init.rc'
[    1.715785] init: /init.rc: 144: invalid option 'root'
[    1.721752] init: skipping insecure file '/init.sun8i.rc'
[    1.728010] init: /init.sun8i.rc: 72: invalid option 'root'
[    1.734440] init: skipping insecure file 'init.sun8i.usb.rc'
[    1.741333] init: command 'loglevel' r=0
[    1.745851] init: command 'export' r=0
[    1.751238] init: skipping insecure file '/ueventd.rc'
[    1.757196] init: skipping insecure file '/ueventd.sun8i.rc'
[    1.763777] init: command 'export' r=0
[    1.768015] init: command 'export' r=0
[    1.780216] init: command 'export' r=0
[    1.784466] init: command 'export' r=0
[    1.800255] init: command 'export' r=0
[    1.804506] init: command 'export' r=0
[    1.808836] init: command 'symlink' r=0
[    1.820234] init: command 'symlink' r=0
[    1.824628] init: command 'symlink' r=0
[    1.829074] init: command 'mkdir' r=0
[    1.840397] init: command 'mkdir' r=0
[    1.844582] init: command 'mkdir' r=0
[    1.848877] init: command 'mkdir' r=-2
[    1.853169] init: processing action 0xff5d28 (init)
[    1.858715] init: command 'export' r=0
[    1.862995] init: command 'export' r=0
[    1.867224] init: command 'export' r=0
[    1.871529] init: command 'export' r=0
[    1.875783] init: command 'export' r=0
[    1.880020] init: processing action 0xff41b8 (early-fs)
[    1.885997] init: command 'mkdir' r=0
[    1.890195] init: command 'mkdir' r=0
[    1.894347] init: command 'mkdir' r=0
[    1.898581] init: processing action 0xff7130 (console_init)
[    1.905068] init: command 'console_init' r=0
[    1.909889] init: processing action 0xff4538 (fs)
[    1.915345] init: command 'wait' r=0
[    1.919854] init: command 'setupfs' r=1
[    1.924346] init: out of loopback devices source = /dev/block/mtdblock2
[    1.931808] init: out of loopback devices target = /system
[    1.938075] init: out of loopback devices system = squashfs
[    1.944341] init: out of loopback devices options = (null)
[    1.953480] init: command 'mount' r=0
[    1.957681] init: command 'wait' r=0
[    1.961771] init: out of loopback devices source = /dev/block/mtdblock3
[    1.969234] init: out of loopback devices target = /data
[    1.975275] init: out of loopback devices system = jffs2
[    1.981307] init: out of loopback devices options = (null)
[    2.009152] init: command 'mount' r=0
[    2.013468] init: out of loopback devices source = none
[    2.019336] init: out of loopback devices target = /sys/kernel/debug/
[    2.026655] init: out of loopback devices system = debugfs
[    2.032834] init: out of loopback devices options = (null)
[    2.039162] init: command 'mount' r=0
[    2.043355] init: processing action 0xff4640 (post-fs)
[    2.049143] init: out of loopback devices source = rootfs
[    2.055632] init: out of loopback devices target = /
[    2.061404] init: out of loopback devices system = rootfs
[    2.067656] init: out of loopback devices options = (null)
[    2.073927] init: command 'mount' r=0
[    2.078155] init: processing action 0xff46a0 (post-fs-data)
[    2.084704] init: command 'chown' r=0
[    2.089043] init: command 'chmod' r=0
[    2.094867] init: command 'chmod' r=-2
[    2.104893] init: command 'mkdir' r=0
[    2.109055] init: command 'restorecon' r=0
[    2.119915] init: command 'mkdir' r=0
[    2.130616] init: command 'mkdir' r=0
[    2.140261] init: command 'mkdir' r=0
[    2.153062] init: command 'mkdir' r=0
[    2.157389] init: command 'chown' r=0
[    2.167856] init: command 'mkdir' r=0
[    2.172541] init: processing action 0xff5a98 (post-fs-data)
[    2.182070] init: skipping insecure file '/system/vendor/modules/videobuf-core.ko'
[    2.213450] init: command 'insmod' r=0
[    2.217798] init: skipping insecure file '/system/vendor/modules/videobuf-dma-contig.ko'
[    2.233063] init: command 'insmod' r=0
[    2.237399] init: skipping insecure file '/system/vendor/modules/cci.ko'
[    2.246570] [VFE]cci probe start cci_sel = 0!
[    2.251591] [VFE]cci probe end cci_sel = 0!
[    2.256390] [VFE]cci_init end
[    2.259957] init: command 'insmod' r=0
[    2.264328] init: skipping insecure file '/system/vendor/modules/vfe_os.ko'
[    2.273033] init: command 'insmod' r=0
[    2.277366] init: skipping insecure file '/system/vendor/modules/vfe_subdev.ko'
[    2.286943] init: command 'insmod' r=0
[    2.291338] init: skipping insecure file '/system/vendor/modules/cov8865.ko'
[    2.320251] init: command 'insmod' r=0
[    2.324599] init: skipping insecure file '/system/vendor/modules/vfe_v4l2.ko'
[    2.472443] [VFE]Welcome to Video Front End driver
[    2.478179] [VFE]pdev->id = 0
[    2.481638] [VFE]dev->mipi_sel = 0
[    2.485531] [VFE]dev->vip_sel = 0
[    2.489266] [VFE]dev->isp_sel = 0
[    2.493512] [VFE][boss] iovdd  =  1800000   i = 0 
[    2.498958] [VFE][boss] avdd  =  2700000   i = 0 
[    2.510031] [VFE_WARN]vfe vpu clock is null
[    2.521198] [ISP] isp platform_id = 6!
[    2.525621] [VFE]vfe_init end
[    2.529357] init: command 'insmod' r=0
[    2.538684] [VFE]probe_work_handle start!
[    2.543280] [VFE]..........................vfe clk open!.......................
[    2.551858] init: processing action 0xff7178 (property_service_init)
[    2.559752] [VFE]v4l2 subdev register input_num = 0
[    2.566453] init: skipping insecure file '/system/build.prop'
[    2.573104] axp20_ldo3: Failed to create debugfs directory
[    2.579267] [VFE]vfe sensor detect start! input_num = 0
[    2.585204] [VFE_WARN]NOT found this item:  cov8865, you can add this sensor in the sensor_list_t!
[    2.595239] [VFE]Sub device register "cov8865" i2c_addr = 0x6c start!
[    2.602521] [VFE]v4l2_device_register_subdev return 0
[    2.608196] [VFE]registered sensor subdev is OK!
[    2.613444] [VFE]Check sensor!
[    2.638123] [VFE]mclk on
[    2.649391] init: Created socket '/dev/socket/property_service' with mode '666', user '0', group '0'
[    2.659840] init: command 'property_service_init' r=0
[    2.666417] init: processing action 0xff71c0 (signal_init)
[    2.672716] init: command 'signal_init' r=0
[    2.677438] init: processing action 0xff7208 (check_startup)
[    2.683965] init: command 'check_startup' r=0
[    2.688935] init: processing action 0xff48b0 (boot)
[    2.694742] sensor_detect 88, 25
[    2.698399] [VFE]mclk off
[    2.701689] init: command 'ifup' r=0
[    2.705958] init: command 'hostname' r=0
[    2.710533] init: command 'domainname' r=0
[    2.715160] init: command 'setrlimit' r=0
[    2.719867] init: command 'chown' r=0
[    2.724181] init: starting 'servicemanager'
[    2.729282] init: starting 'vold'
[    2.737581] init: starting 'startupSound'
[    2.744931] init: Created socket '/dev/socket/vold' with mode '660', user '0', group '1009'
[    2.756986] init: command 'class_start' r=0
[    2.765419] init: cannot find '/system/bin/debuggerd', disabling 'debuggerd'
[    2.779262] init: starting 'media'
[    2.785959] init: starting 'sdv'
[    2.794102] init: command 'class_start' r=0
[    2.800148] [VFE]Sub device register "cov8865" is OK!
[    2.811491] init: processing action 0xff5ba8 (boot)
[    2.817242] [VFE]Check open /system/etc/hawkview/cov8865/isp_test_param.ini failed!
[    2.817251] Match isp cfg  start!
[    2.829684] [VFE_WARN]NOT found this item:  cov8865, you can add this ISP Config in the isp_cfg_array!
[    2.845107] [VFE]read ini start
[    2.848764] [VFE]Fetch ini file form "/system/etc/hawkview/cov8865/isp_test_param.ini"
[    2.858307] init: command 'setprop' r=0
[    2.862782] init: command 'setprop' r=0
[    2.867145] init: command 'setprop' r=0
[    2.872920] [vfe_warn]open file failed!
[    2.877699] [VFE_WARN]read ini info fail
[    2.882235] init: processing action 0xff7250 (queue_property_triggers)
[    2.889742] init: command 'queue_property_triggers' r=0
[    2.896053] [VFE]V4L2 device registered as video0
[    2.901434] [VFE]..........................vfe clk close!.......................
[    2.909777] [VFE]probe_work_handle end!
[    2.914277] init: processing action 0xff4b90 (property:ro.debuggable=1)
[    2.922733] init: starting 'console'
[    2.929038] init: command 'start' r=0
[    2.936580] init: processing action 0xff6af0 (property:sys.usb.config=mass_storage,adb)
[    2.946572] android_usb: already disabled
[    2.951814] init: command 'write' r=0
[    2.956790] init: command 'write' r=0
[    2.961897] init: command 'write' r=0
[    2.967168] init: command 'write' r=0
[    2.972286] init: command 'write' r=0
[    2.977278] init: command 'setprop' r=0
root@camdroid:/ # [    5.246134] �newcdr����: main entry
[    5.250492] �newcdr����: [Firmware Version: boss@dv8000_sdv 2021-04-24 23:22:10]
[    5.270908] �newcdr����: ===no need to check battery capacity ===
[    6.070431] init: waitpid returned pid 58, status = 00000000
[    6.077120] init: process 'startupSound', pid 58 exited
[    6.333098] [DISP] ready enter pm_runtime_get_sync, device0
[    6.456292] [VFE]vfe_open
[    6.459281] [VFE]..........................vfe clk open!.......................
[    6.468536] [VFE]vfe_open ok
[    6.471953] [VFE_WARN]NOT found this item:  cov8865, you can add this sensor in the sensor_list_t!
[    6.482219] [VFE_WARN]Not find this sensor info, Set vfe core clk = 500000000, after Set vfe core clk = 480000000 
[    6.513564] [VFE]mclk on
[    6.553184] sensor_detect 88, 25
[    6.561806] [VFE_WARN]value: -1, min: 0, max: 128
[    6.561815]  
[    6.569197] [VFE_WARN]value: -1, min: 0, max: 255
[    6.569205]  
[    6.577909] [VFE]V4L2_MBUS_CSI2,4 lane,bus1 channel,rx 1 channel
[    6.755364] [COV8865]s_fmt = 3019, width = 1280, height = 720
[    6.761836] [COV8865]s_fmt end
[    6.765338] [VFE]width_input = 1632, height_input = 918, width = 1280, height = 720
[    6.773982] [VFE]dev->buf_byte_size = 1622016, double_ch_flag = 1
[    6.780885] [VFE]Init isp ini configs from isp_cfg.
[    6.847774] [VFE]put 1 frame into one buf to output!
[    6.853612] [VFE]buffer_setup, buffer count=10, size=1626112
[    6.891842] �newcdr����: startPreview finished
[    6.935228] [VFE]capture video mode!
[    6.939897] [VFE]capture video first frame done!
[    7.070168] [VFE]V4L2_MBUS_CSI2,4 lane,bus1 channel,rx 1 channel
[    7.234913] [COV8865]s_fmt = 3019, width = 1280, height = 720
[    7.241377] [COV8865]s_fmt end
[    7.244859] [VFE]width_input = 1280, height_input = 720, width = 1280, height = 720
[    7.253515] [VFE]dev->buf_byte_size = 2097152, double_ch_flag = 1
[    7.260412] [VFE]Init isp ini configs from isp_cfg.
[    7.327304] [VFE]put 2 frame into one buf to output!
[    7.333124] [VFE]buffer_setup, buffer count=10, size=4198400
[    7.416940] [VFE]capture video mode!
[    7.426982] [VFE]capture video first frame done!
[    7.446595] [VFE]V4L2_MBUS_CSI2,4 lane,bus1 channel,rx 1 channel
[    7.540260] [COV8865]s_fmt = 3019, width = 2688, height = 1520
[    7.546881] [COV8865]s_fmt end
[    7.550372] [VFE]width_input = 3264, height_input = 1836, width = 2688, height = 1520
[    7.559206] [VFE]dev->buf_byte_size = 6844416, double_ch_flag = 1
[    7.566044] [VFE]Init isp ini configs from isp_cfg.
[    7.633079] [VFE]put 1 frame into one buf to output!
[    7.638704] [VFE]buffer_setup, buffer count=5, size=6848512
[    7.739729] [VFE]capture video mode!
[    7.773051] [VFE]capture video first frame done!
[    8.497011] init: processing action 0xff6af0 (property:sys.usb.config=mass_storage,adb)
[    8.497161] init: command 'write' r=0
[    8.497260] init: command 'write' r=0
[    8.497317] init: command 'write' r=0
[    8.497383] init: command 'write' r=0
[    8.497434] init: command 'write' r=0
[    8.497493] init: command 'setprop' r=0
[    8.864836] [xradio_plat]: wifi_sdc_id=1
[    8.869369] [xradio_plat]: wl_reg_on=34
[    8.873817] [xradio_plat]: wl_host_wake=32
[    8.878430] [xradio_plat]: wifi_power not config.
[    8.883741] [xradio_plat]: xr_wl_power_vol not config.
[    8.889563] [xradio_plat]: wifi_power_ext1 not config.
[    8.895340] [xradio_plat]: xr_wl_power_vol1 not config.
[    8.901264] [xradio_plat]: wifi_power_ext2 not config.
[    8.907031] [VFE_WARN] Nobody is waiting on this video buffer,buf = 0xc99e7c40
[    8.915196] [xradio_plat]: xr_wl_power_vol2 not config.
[    8.921069] [xradio_plat]: xradio_lpo_use_apclk not config.
[    8.963172] ======== XRADIO WIFI OPEN ========
[    8.968264] [XRADIO] Driver Label:XR_V02.07  Oct 27 2020 22:32:43
[    8.979087] [XRADIO] Allocated hw_priv @ c9a62ea0
[    9.039489] [VFE_WARN] Nobody is waiting on this video buffer,buf = 0xc99e77c0
[    9.166979] [XRADIO] Detect SDIO card 1
[    9.181389] [mmc]: sdc1 set ios: clk 0Hz bm PP pm UP vdd 3.3V width 1 timing LEGACY(SDR12) dt B
[    9.193087] [mmc]: sdc1 power_supply is null
[    9.213652] [mmc]: sdc1 set ios: clk 400000Hz bm PP pm ON vdd 3.3V width 1 timing LEGACY(SDR12) dt B
[    9.244568] [mmc]: sdc1 set ios: clk 400000Hz bm PP pm ON vdd 3.3V width 1 timing LEGACY(SDR12) dt B
[    9.257543] [mmc]: sdc1 set ios: clk 400000Hz bm PP pm ON vdd 3.3V width 1 timing LEGACY(SDR12) dt B
[    9.269360] *******************Try sdio*******************
[    9.282284] [mmc]: sdc1 set ios: clk 400000Hz bm PP pm ON vdd 3.3V width 1 timing LEGACY(SDR12) dt B
[    9.301614] [mmc]: sdc1 set ios: clk 400000Hz bm PP pm ON vdd 3.3V width 1 timing SD-HS(SDR25) dt B
[    9.315674] [mmc]: sdc1 set ios: clk 50000000Hz bm PP pm ON vdd 3.3V width 1 timing SD-HS(SDR25) dt B
[    9.326470] [mmc]: sdc1 set ios: clk 50000000Hz bm PP pm ON vdd 3.3V width 4 timing SD-HS(SDR25) dt B
[    9.337565] mmc1: new high speed SDIO card at address 0001
[    9.346469] [SBUS] XRadio Device:sdio clk=50000000
[    9.357141] [XRADIO] XRADIO_HW_REV 1.0 detected.
[    9.367078] *******************sdio init ok*******************
[    9.560717] [XRADIO] Bootloader complete
[    9.644876] [XRADIO] Firmware completed.
[    9.659904] [WSM] Firmware Label:XR_C01.08.52.06 Nov  7 2016 17:43:41
[    9.667398] [XRADIO] Firmware Startup Done.
[    9.715709] ieee80211 phy0: Selected rate control algorithm 'minstrel_ht'
[    9.814403] wdt_set_tmout, write 0x00000080 to mode reg 0xf1c20cb8, actual timeout 10 sec
[    9.823673] wdt_enable, write reg 0xf1c20cb8 val 0x00000081
[    9.830606] init: cannot find '/system/bin/debuggerd', disabling 'debuggerd'
[    9.850447] init: starting 'adbd'
[    9.854415] wdt_enable, write reg 0xf1c20cb8 val 0x00000080
[    9.863562] init: starting 'standby'
[    9.868139] init: Created socket '/dev/socket/adbd' with mode '660', user '1000', group '1000'
[    9.880007] wdt_set_tmout, write 0x00000080 to mode reg 0xf1c20cb8, actual timeout 10 sec
[    9.897906] adb_open
[    9.900700] ep_matches, wrn: endpoint already claimed, ep(0xc04a4524, 0xca235980, ep1in-bulk)
[    9.914840] wdt_set_tmout, write 0x00000070 to mode reg 0xf1c20cb8, actual timeout 8 sec
[    9.924045] wdt_enable, write reg 0xf1c20cb8 val 0x00000071
[    9.930513] adb_bind_config
[    9.933690] ep_matches, wrn: endpoint already claimed, ep(0xc04a4524, 0xca235980, ep1in-bulk)
[    9.943366] ep_matches, wrn: endpoint already claimed, ep(0xc04a4570, 0xca235980, ep1out-bulk)
[    9.953077] ep_matches, wrn: endpoint already claimed, ep(0xc04a4524, 0xca235980, ep1in-bulk)
[    9.962680] ep_matches, wrn: endpoint already claimed, ep(0xc04a4570, 0xca235980, ep1out-bulk)
[    9.972315] ep_matches, wrn: endpoint already claimed, ep(0xc04a45bc, 0xca24fc00, ep2in-bulk)
[    9.981909] [VFE_WARN] Nobody is waiting on this video buffer,buf = 0xc99e76c0
[   21.080296] set usbcur 0 mA
[   21.083701] set usbvol 4000 mV
[   38.670857] LCD_panel_exit: enter sleep
[   38.980330] [DISP] disp_sys_gpio_set_value,line:374:OSAL_GPIO_DevWRITE_ONEPIN_DATA, hdl is NULL
```