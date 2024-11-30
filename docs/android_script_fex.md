## Stock Android script.fex
```ini
[product]
version = "100"
machine = "pqdv8000-sdv"

[platform]
eraseflag = 0
debug_mode = 0

[target]
boot_clock = 1008
storage_type = -1

[boot_spi_board0]
boot_spi_speed_hz = 0x2625a00
speed_mod = 0

[power_sply]
dcdc2_vol = 1220
dcdc3_vol = 3300
aldo2_vol = 2500
aldo3_vol = 3000
ldo1_vol = 3300
ldo2_vol = 3000
ldo4_vol = 0

[card_boot]
logical_start = 40960
sprite_gpio0 = port:PB10<1><default><default><0>

[gpio_flashing]
used = 1
flashing_delay = 50
flashing_times = 7
flashing_gpio0 = port:PB10<1><default><default><1>

[card0_boot_para]
card_ctrl = 0
card_high_speed = 1
card_line = 4
sdc_d1 = port:PF0<2><1><default><default>
sdc_d0 = port:PF1<2><1><default><default>
sdc_clk = port:PF2<2><1><default><default>
sdc_cmd = port:PF3<2><1><default><default>
sdc_d3 = port:PF4<2><1><default><default>
sdc_d2 = port:PF5<2><1><default><default>

[card2_boot_para]
card_ctrl = 2
card_high_speed = 1
card_line = 8
sdc_cmd = port:PC1<2><1><default><default>
sdc_clk = port:PC0<2><1><default><default>
sdc_d0 = port:PC3<2><1><default><default>
sdc_d1 = port:PC4<2><1><default><default>
sdc_d2 = port:PC5<2><1><default><default>
sdc_d3 = port:PC6<2><1><default><default>
sdc_d4 = port:PC7<2><1><default><default>
sdc_d5 = port:PC8<2><1><default><default>
sdc_d6 = port:PC9<2><1><default><default>
sdc_d7 = port:PC10<2><1><default><default>
sdc_2xmode = 1
sdc_ddrmode = 1

[twi_para]
twi_port = 0
twi_scl = port:PB7<2><default><default><default>
twi_sda = port:PB6<2><default><default><default>

[uart_para]
uart_debug_port = 1
uart_debug_tx = port:PG6<2><1><default><default>
uart_debug_rx = port:PG7<2><1><default><default>

[jtag_para]
jtag_enable = 0
jtag_ck = port:PB11<2><default><default><default>
jtag_do = port:PB12<2><default><default><default>
jtag_di = port:PB13<2><default><default><default>

[clock]
pll3 = 297
pll4 = 300
pll6 = 600
pll8 = 360
pll9 = 480
pll10 = 297
pll_ve = 480
pll_isp = 480

[pm_para]
standby_mode = 1

[dram_para]
dram_clk = 648
dram_type = 3
dram_zq = 14779
dram_odt_en = 1
dram_para1 = 0x10e20000
dram_para2 = 0
dram_mr0 = 6208
dram_mr1 = 4
dram_mr2 = 24
dram_mr3 = 4
dram_tpr0 = 0x832087
dram_tpr1 = 0x1c24085
dram_tpr2 = 0x2a01d
dram_tpr3 = 0
dram_tpr4 = 0
dram_tpr5 = 0
dram_tpr6 = 0
dram_tpr7 = 0
dram_tpr8 = 0
dram_tpr9 = 0
dram_tpr10 = 3
dram_tpr11 = 0x240000
dram_tpr12 = 120
dram_tpr13 = 0x1000000

[pm_para]
standby_mode = 0

[wakeup_src_para]
cpu_en = 0
cpu_freq = 48
pll_ratio = 273
dram_selfresh_en = 1
dram_freq = 36
wakeup_src_wl = port:PL7<4><default><default><0>
wakeup_src_bt = port:PL9<4><default><default><0>
bb_wake_ap = port:PL2<4><default><default><0>

[twi0]
twi_used = 1
twi_scl = port:PB6<2><default><default><default>
twi_sda = port:PB7<2><default><default><default>

[twi1]
twi_used = 1
twi_scl = port:PB8<2><default><default><default>
twi_sda = port:PB9<2><default><default><default>

[uart0]
uart_used = 0
uart_port = 0
uart_type = 2
uart_tx = port:PF2<3><1><default><default>
uart_rx = port:PF4<3><1><default><default>

[uart1]
uart_used = 1
uart_type = 2
uart_port = 0
uart_tx = port:PG6<2><1><default><default>
uart_rx = port:PG7<2><1><default><default>

[uart2]
uart_used = 0
uart_type = 2
uart_port = 2
uart_tx = port:PB0<2><1><default><default>
uart_rx = port:PB1<2><1><default><default>

[spi0]
spi_used = 1
spi_cs_bitmap = 1
spi_mosi = port:PC3<3><default><default><default>
spi_miso = port:PC0<3><default><default><default>
spi_sclk = port:PC1<3><default><default><default>
spi_cs0 = port:PC2<3><1><default><default>

[spi_devices]
spi_dev_num = 1

[spi_board0]
modalias = "at25df641"
max_speed_hz = 0x2faf080
bus_num = 0
chip_select = 0
mode = 0
sflash_size = 8

[ctp_para]
ctp_used = 0
ctp_name = "gt911_m785q6"
ctp_twi_id = 1
ctp_twi_addr = 0x5d
ctp_screen_max_x = 800
ctp_screen_max_y = 480
ctp_revert_x_flag = 0
ctp_revert_y_flag = 0
ctp_exchange_x_y_flag = 1
ctp_int_port = 
ctp_wakeup = 

[ctp_list_para]
ctp_det_used = 0
gt911_ts = 1
ft5x_ts = 1
gt82x = 1
gslX680 = 1
gt9xx_ts = 1
gt811 = 1
zet622x = 1
aw5306_ts = 1

[tkey_para]
tkey_used = 0
tkey_twi_id = 
tkey_twi_addr = 
tkey_int = 

[motor_para]
motor_used = 0
motor_shake = port:P?3<1><default><default><1>

[cooler_table]
cooler_count = 4
cooler0 = "1340000 4 4294967295 0"
cooler1 = "1200000 4 4294967295 0"
cooler2 = "1008000 4 4294967295 0"
cooler3 = "648000 4 4294967295 0"

[disp_init]
disp_init_enable = 1
disp_mode = 0
screen0_output_type = 1
screen0_output_mode = 4
screen1_output_type = 1
screen1_output_mode = 4
fb0_format = 0
fb0_pixel_sequence = 0
fb0_scaler_mode_enable = 0
fb0_width = 320
fb0_height = 240
fb1_format = 0
fb1_pixel_sequence = 0
fb1_scaler_mode_enable = 0
fb1_width = 0
fb1_height = 0
lcd0_backlight = 200
lcd1_backlight = 50
lcd0_bright = 50
lcd0_contrast = 50
lcd0_saturation = 57
lcd0_hue = 50
lcd1_bright = 50
lcd1_contrast = 50
lcd1_saturation = 57
lcd1_hue = 50

[rotate_sw]
used = 1
degree0 = 1

[lcd0_para]
lcd_used = 1
lcd_driver_name = "ili9335"
lcd_if = 1
lcd_x = 240
lcd_y = 320
lcd_width = 108
lcd_height = 64
lcd_dclk_freq = 16
lcd_pwm_used = 1
lcd_pwm_ch = 0
lcd_pwm_freq = 50000
lcd_pwm_pol = 1
lcd_pwm_max_limit = 255
lcd_hbp = 60
lcd_ht = 405
lcd_hspw = 30
lcd_vbp = 340
lcd_vt = 670
lcd_vspw = 2
lcd_frm = 1
lcd_hv_clk_phase = 0
lcd_hv_sync_polarity = 0
lcd_gamma_en = 0
lcd_bright_curve_en = 1
lcd_cmap_en = 0
lcd_cpu_mode = 1
lcd_cpu_te = 1
lcd_cpu_if = 14
lcd_hv_if = 0
lcd_hv_srgb_seq = 0
lcd_rb_swap = 1
lcdgamma4iep = 22
lcd_bl_en = port:PE23<1><0><2><1>
lcd_gpio_0 = port:PB11<1><0><2><1>
lcd_gpio_1 = port:PB12<1><0><2><0>
lcdd3 = port:PD1<2><0><2><default>
lcdd4 = port:PD2<2><0><2><default>
lcdd5 = port:PD3<2><0><2><default>
lcdd6 = port:PD4<2><0><2><default>
lcdd7 = port:PD5<2><0><2><default>
lcdd10 = port:PD6<2><0><2><default>
lcdd11 = port:PD7<2><0><2><default>
lcdd12 = port:PD8<2><0><2><default>
lcdclk = port:PD18<2><0><3><default>
lcdde = port:PD19<2><0><3><default>
lcdhsync = port:PD20<2><0><3><default>
lcdvsync = port:PD21<2><0><3><default>

[hdmi_ep952_para]
hdmi_used = 1
gpio_0 = port:PG9<1><0><default><0>
gpio_1 = port:PG13<0><2><2><default>
hdmi_twi_used = 1
hdmi_twi_id = 1
hdmi_twi_addr = 0x29
hdmi_d2 = port:PD0<2><0><2><default>
hdmi_d3 = port:PD1<2><0><2><default>
hdmi_d4 = port:PD2<2><0><2><default>
hdmi_d5 = port:PD3<2><0><2><default>
hdmi_d6 = port:PD4<2><0><2><default>
hdmi_d7 = port:PD5<2><0><2><default>
hdmi_d10 = port:PD6<2><0><2><default>
hdmi_d11 = port:PD7<2><0><2><default>
hdmi_d12 = port:PD8<2><0><2><default>
hdmi_d13 = port:PD9<2><0><2><default>
hdmi_d14 = port:PD10<2><0><2><default>
hdmi_d15 = port:PD11<2><0><2><default>
hdmi_d18 = port:PD12<2><0><2><default>
hdmi_d19 = port:PD13<2><0><2><default>
hdmi_d20 = port:PD14<2><0><2><default>
hdmi_d21 = port:PD15<2><0><2><default>
hdmi_d22 = port:PD16<2><0><2><default>
hdmi_d23 = port:PD17<2><0><2><default>
hdmi_d24 = port:PD18<2><0><3><default>
hdmi_d25 = port:PD19<2><0><3><default>
hdmi_d26 = port:PD20<2><0><3><default>
hdmi_d27 = port:PD21<2><0><3><default>
hdmi_power = "axp20_ldo4"

[hdmi_it66121_para]
hdmi_used = 0
gpio_0 = port:PG9<1><0><default><0>
gpio_1 = 
hdmi_twi_used = 0
hdmi_twi_id = 1
hdmi_twi_addr = 0x4d
hdmi_d2 = port:PD0<2><0><2><default>
hdmi_d3 = port:PD1<2><0><2><default>
hdmi_d4 = port:PD2<2><0><2><default>
hdmi_d5 = port:PD3<2><0><2><default>
hdmi_d6 = port:PD4<2><0><2><default>
hdmi_d7 = port:PD5<2><0><2><default>
hdmi_d10 = port:PD6<2><0><2><default>
hdmi_d11 = port:PD7<2><0><2><default>
hdmi_d12 = port:PD8<2><0><2><default>
hdmi_d13 = port:PD9<2><0><2><default>
hdmi_d14 = port:PD10<2><0><2><default>
hdmi_d15 = port:PD11<2><0><2><default>
hdmi_d18 = port:PD12<2><0><2><default>
hdmi_d19 = port:PD13<2><0><2><default>
hdmi_d20 = port:PD14<2><0><2><default>
hdmi_d21 = port:PD15<2><0><2><default>
hdmi_d22 = port:PD16<2><0><2><default>
hdmi_d23 = port:PD17<2><0><2><default>
hdmi_d24 = port:PD18<2><0><3><default>
hdmi_d25 = port:PD19<2><0><3><default>
hdmi_d26 = port:PD20<2><0><3><default>
hdmi_d27 = port:PD21<2><0><3><default>
hdmi_power = "axp20_ldo4"

[pwm0_para]
pwm_used = 1

[csi0]
vip_used = 1
vip_mode = 0
vip_dev_qty = 1
vip_define_sensor_list = 0
vip_csi_mck = port:PE20<3><default><default><default>
vip_csi_sck = port:PE21<2><default><default><default>
vip_csi_sda = port:PE22<2><default><default><default>
vip_dev0_mname = "cov8865"
vip_dev0_pos = "rear"
vip_dev0_lane = 1
vip_dev0_twi_id = 0
vip_dev0_twi_addr = 0x6c
vip_dev0_isp_used = 1
vip_dev0_fmt = 1
vip_dev0_stby_mode = 0
vip_dev0_vflip = 0
vip_dev0_hflip = 0
vip_dev0_iovdd = "vcc-pe"
vip_dev0_iovdd_vol = 0x1b7740
vip_dev0_avdd = "vcc-pe"
vip_dev0_avdd_vol = 0x2932e0
vip_dev0_dvdd = ""
vip_dev0_dvdd_vol = 0x124f80
vip_dev0_afvdd = ""
vip_dev0_afvdd_vol = 0x2ab980
vip_dev0_power_en = port:PE1<1><default><default><default>
vip_dev0_reset = port:PE18<1><default><default><default>
vip_dev0_pwdn = port:PE19<1><default><default><default>
vip_dev0_flash_en = 
vip_dev0_flash_mode = 
vip_dev0_af_pwdn = 
vip_dev0_act_used = 0
vip_dev0_act_name = "dw9714_act"
vip_dev0_act_slave = 24
vip_dev1_mname = ""
vip_dev1_pos = "front"
vip_dev1_lane = 1
vip_dev1_twi_id = 0
vip_dev1_twi_addr = 
vip_dev1_isp_used = 0
vip_dev1_fmt = 1
vip_dev1_stby_mode = 0
vip_dev1_vflip = 0
vip_dev1_hflip = 0
vip_dev1_iovdd = ""
vip_dev1_iovdd_vol = 0x2ab980
vip_dev1_avdd = ""
vip_dev1_avdd_vol = 0x2ab980
vip_dev1_dvdd = ""
vip_dev1_dvdd_vol = 0x16e360
vip_dev1_afvdd = ""
vip_dev1_afvdd_vol = 0x2ab980
vip_dev1_power_en = 
vip_dev1_reset = 
vip_dev1_pwdn = 
vip_dev1_flash_en = 
vip_dev1_flash_mode = 
vip_dev1_af_pwdn = 

[csi1]
vip_used = 0
vip_mode = 0
vip_dev_qty = 1
vip_define_sensor_list = 0
vip_csi_pck = port:PE0<2><default><default><default>
vip_csi_mck = port:PE1<2><default><default><default>
vip_csi_hsync = port:PE2<2><default><default><default>
vip_csi_vsync = port:PE3<2><default><default><default>
vip_csi_d0 = port:PE4<2><default><default><default>
vip_csi_d1 = port:PE5<2><default><default><default>
vip_csi_d2 = port:PE6<2><default><default><default>
vip_csi_d3 = port:PE7<2><default><default><default>
vip_csi_d4 = port:PE8<2><default><default><default>
vip_csi_d5 = port:PE9<2><default><default><default>
vip_csi_d6 = port:PE10<2><default><default><default>
vip_csi_d7 = port:PE11<2><default><default><default>
vip_csi_d8 = port:PE12<2><default><default><default>
vip_csi_d9 = port:PE13<2><default><default><default>
vip_csi_d10 = port:PE14<2><default><default><default>
vip_csi_d11 = port:PE15<2><default><default><default>
vip_csi_sck = port:PE21<2><default><default><default>
vip_csi_sda = port:PE22<2><default><default><default>
vip_dev0_mname = "ov5640"
vip_dev0_pos = "front"
vip_dev0_twi_id = 4
vip_dev0_twi_addr = 0x78
vip_dev0_isp_used = 0
vip_dev0_fmt = 0
vip_dev0_stby_mode = 0
vip_dev0_vflip = 0
vip_dev0_hflip = 0
vip_dev0_iovdd = ""
vip_dev0_iovdd_vol = 0x2ab980
vip_dev0_avdd = ""
vip_dev0_avdd_vol = 0x2ab980
vip_dev0_dvdd = ""
vip_dev0_dvdd_vol = 0x16e360
vip_dev0_afvdd = ""
vip_dev0_afvdd_vol = 0x2ab980
vip_dev0_power_en = 
vip_dev0_reset = port:PE23<1><default><default><default>
vip_dev0_pwdn = port:PE24<1><default><default><default>
vip_dev0_flash_en = 
vip_dev0_flash_mode = 
vip_dev0_af_pwdn = 
vip_dev0_act_used = 0
vip_dev0_act_name = "ad5820_act"
vip_dev0_act_slave = 24
vip_dev1_mname = "gc2035"
vip_dev1_pos = "front"
vip_dev1_lane = 1
vip_dev1_twi_id = 4
vip_dev1_twi_addr = 0x78
vip_dev1_isp_used = 0
vip_dev1_fmt = 1
vip_dev1_stby_mode = 0
vip_dev1_vflip = 0
vip_dev1_hflip = 0
vip_dev1_iovdd = ""
vip_dev1_iovdd_vol = 0x2ab980
vip_dev1_avdd = ""
vip_dev1_avdd_vol = 0x2ab980
vip_dev1_dvdd = ""
vip_dev1_dvdd_vol = 0x16e360
vip_dev1_afvdd = ""
vip_dev1_afvdd_vol = 0x2ab980
vip_dev1_power_en = 
vip_dev1_reset = 
vip_dev1_pwdn = 
vip_dev1_flash_en = 
vip_dev1_flash_mode = 
vip_dev1_af_pwdn = 

[mmc0_para]
sdc_used = 1
sdc_detmode = 1
sdc_buswidth = 4
sdc_d1 = port:PF0<2><1><2><default>
sdc_d0 = port:PF1<2><1><2><default>
sdc_clk = port:PF2<2><1><2><default>
sdc_cmd = port:PF3<2><1><2><default>
sdc_d3 = port:PF4<2><1><2><default>
sdc_d2 = port:PF5<2><1><2><default>
sdc_det = port:PF6<0><1><2><default>
sdc_use_wp = 0
sdc_wp = 
sdc_isio = 0
sdc_regulator = "none"

[mmc1_para]
sdc_used = 1
sdc_detmode = 4
sdc_buswidth = 4
sdc_clk = port:PG0<2><1><1><default>
sdc_cmd = port:PG1<2><1><1><default>
sdc_d0 = port:PG2<2><1><1><default>
sdc_d1 = port:PG3<2><1><1><default>
sdc_d2 = port:PG4<2><1><1><default>
sdc_d3 = port:PG5<2><1><1><default>
sdc_det = 
sdc_use_wp = 0
sdc_wp = 
sdc_isio = 1
sdc_regulator = "none"

[mmc2_para]
sdc_used = 0
sdc_detmode = 3
sdc_buswidth = 8
sdc_clk = port:PC0<2><1><2><default>
sdc_cmd = port:PC1<2><1><2><default>
sdc_d0 = port:PC3<2><1><2><default>
sdc_d1 = port:PC4<2><1><2><default>
sdc_d2 = port:PC5<2><1><2><default>
sdc_d3 = port:PC6<2><1><2><default>
sdc_d4 = port:PC7<2><1><2><default>
sdc_d5 = port:PC8<2><1><2><default>
sdc_d6 = port:PC9<2><1><2><default>
sdc_d7 = port:PC10<2><1><2><default>
emmc_rst = port:PC2<2><1><2><default>
sdc_det = 
sdc_use_wp = 0
sdc_wp = 
sdc_isio = 0
sdc_regulator = "none"

[usbc0]
usb_used = 1
usb_port_type = 0
usb_detect_type = 1
usb_id_gpio = port:PG11<0><1><default><default>
usb_det_vbus_gpio = port:PG11<0><1><default><default>
usb_drv_vbus_gpio = port:PG10<1><0><default><0>
usb_restrict_gpio = 
usb_host_init_state = 0
usb_restric_flag = 0
usb_restric_voltage = 0x362b30
usb_restric_capacity = 5
usb_regulator_io = "nocare"
usb_regulator_vol = 0
usb_not_suspend = 0

[usb_feature]
vendor_id = 6353
mass_storage_id = 1
adb_id = 2
manufacturer_name = "USB Developer"
product_name = "Android"
serial_number = "20080411"

[msc_feature]
vendor_name = "USB 2.0"
product_name = "USB Flash Driver"
release = 100
luns = 1

[serial_feature]
serial_unique = 0

[gsensor_para]
gsensor_used = 1
gsensor_twi_id = 1
gsensor_twi_addr = 0x18
gsensor_int1 = 
gsensor_int2 = 

[gsensor_list_para]
gsensor_det_used = 1
bma250 = 0
da380 = 1
mma8452 = 0
mma7660 = 0
mma865x = 0
afa750 = 0
lis3de_acc = 0
lis3dh_acc = 0
kxtik = 0
dmard10 = 0
dmard06 = 0
mxc622x = 0
fxos8700 = 0
lsm303d = 0

[gps_para]

[module_para]
module_power0 = 
module_power0_vol = 
module_power1 = 
module_power1_vol = 
module_power2 = 
module_power2_vol = 
module_power3 = 
module_power3_vol = 
chip_en = 
lpo_use_apclk = ""

[wifi_para]
wifi_used = 1
wifi_sdc_id = 1
wifi_usbc_id = 
wifi_usbc_type = 
wl_reg_on = port:PB2<1><default><default><0>
wl_host_wake = port:PB0<0><default><default><0>
wl_host_wake_invert = 0

[bt_para]
bt_used = 0
bt_uart_id = 1

[gy_para]
gy_used = 0
gy_twi_id = 1
gy_twi_addr = 0x6a
gy_int1 = 
gy_int2 = 

[ls_list_para]
ls_det_used = 0
ltr_501als = 1
jsa1212 = 1

[compass_para]
compass_used = 0
compass_twi_id = 1
compass_twi_addr = 0xd
compass_int = 

[tdm0]
daudio_used = 1
daudio_master = 4
daudio_select = 1
audio_format = 1
signal_inversion = 1
mclk_fs = 512
sample_resolution = 16
slot_width_select = 16
pcm_lrck_period = 32
pcm_lrckr_period = 1
msb_lsb_first = 0
sign_extend = 0
slot_index = 0
slot_width = 16
frame_width = 1
tx_data_mode = 0
rx_data_mode = 0
i2s_bclk = port:PG11<2><1><default><default>
i2s_lrclk = port:PG10<2><1><default><default>
i2s_dout0 = port:PG12<2><1><default><default>
i2s_dout1 = 
i2s_dout2 = 
i2s_dout3 = 

[audio0]
headphone_vol = 59
cap_vol = 6
Differential_output = 1
pa_single_vol = 25
pa_double_used = 0
pa_double_vol = 31
headphone_direct_used = 1
phone_mic_vol = 6
version_v3_used = 1
headphone_mute_used = 0
audio_hp_ldo = "none"
audio_pa_ctrl = port:PB5<1><default><default><0>
adcagc_used = 0
adcdrc_used = 1
dacdrc_used = 0
adchpf_used = 1
dachpf_used = 0

[s_ir0]
ir_used = 0
ir_rx = port:PL4<2><1><default><default>

[pmu1_para]
pmu_used = 1
pmu_id = 1
pmu_twi_addr = 0x34
pmu_twi_id = 0
pmu_irq_id = 64
pmu_battery_rdc = 280
pmu_battery_cap = 805
pmu_batdeten = 1
pmu_runtime_chgcur = 300
pmu_earlysuspend_chgcur = 450
pmu_suspend_chgcur = 600
pmu_shutdown_chgcur = 600
pmu_init_chgvol = 4200
pmu_init_chgend_rate = 15
pmu_init_chg_enabled = 1
pmu_init_adc_freq = 100
pmu_init_chg_pretime = 50
pmu_init_chg_csttime = 720
pmu_bat_para1 = 0
pmu_bat_para2 = 1
pmu_bat_para3 = 3
pmu_bat_para4 = 5
pmu_bat_para5 = 9
pmu_bat_para6 = 14
pmu_bat_para7 = 19
pmu_bat_para8 = 30
pmu_bat_para9 = 41
pmu_bat_para10 = 52
pmu_bat_para11 = 59
pmu_bat_para12 = 66
pmu_bat_para13 = 75
pmu_bat_para14 = 84
pmu_bat_para15 = 91
pmu_bat_para16 = 100
pmu_usbvol_limit = 1
pmu_usbcur_limit = 0
pmu_usbvol = 4000
pmu_usbcur = 0
pmu_usbvol_pc = 4000
pmu_usbcur_pc = 0
pmu_pwroff_vol = 3300
pmu_pwron_vol = 2900
pmu_pekoff_time = 6000
pmu_pekoff_en = 1
pmu_peklong_time = 1500
pmu_pekon_time = 1000
pmu_pwrok_time = 64
pmu_pwrnoe_time = 2000
pmu_hot_shutdown = 1
pmu_suspendpwroff_vol = 3500
power_start = 1
pmu_reduce_power_waste = 1
pmu_chgled_func = 0
pmu_chgled_type = 0
pmu_temp_enable = 0
pmu_charge_ltf = 2261
pmu_charge_htf = 388
pmu_discharge_ltf = 3200
pmu_discharge_htf = 237
pmu_temp_para1 = 7466
pmu_temp_para2 = 4480
pmu_temp_para3 = 3518
pmu_temp_para4 = 2786
pmu_temp_para5 = 2223
pmu_temp_para6 = 1788
pmu_temp_para7 = 1448
pmu_temp_para8 = 969
pmu_temp_para9 = 664
pmu_temp_para10 = 466
pmu_temp_para11 = 393
pmu_temp_para12 = 333
pmu_temp_para13 = 283
pmu_temp_para14 = 242
pmu_temp_para15 = 179
pmu_temp_para16 = 134

[pmu1_regu]
regulator_count = 7
regulator1 = "axp20_dcdc2 none vdd-sys vdd-cpu vdd-ephy"
regulator2 = "axp20_dcdc3 none vcc-io hpvcc vcc-pd vcc-usb vcc-ephy vcc-mcsi vcc-lcd vcc-wifi vcc-device vcc-csi vcc-ctp"
regulator3 = "axp20_ldo1 none vcc-rtc"
regulator4 = "axp20_ldo2 none  vcc-avcc vcc-pll"
regulator5 = "axp20_ldo3 none vcc-pe"
regulator6 = "axp20_ldo4 none"
regulator7 = "axp20_ldoio0 none"

[dvfs_table]
max_freq = 0x3c14dc00
min_freq = 0x3938700
LV_count = 8
LV1_freq = 0x5b8d8000
LV1_volt = 1500
LV2_freq = 0x4d3f6400
LV2_volt = 1340
LV3_freq = 0x47868c00
LV3_volt = 1320
LV4_freq = 0x3c14dc00
LV4_volt = 1200
LV5_freq = 0x30a32c00
LV5_volt = 1100
LV6_freq = 0x269fb200
LV6_volt = 1040
LV7_freq = 0
LV7_volt = 1040
LV8_freq = 0
LV8_volt = 1040

[Vdevice]
Vdevice_used = 1
Vdevice_0 = port:PA1<5><1><2><default>
Vdevice_1 = port:PA2<5><1><2><default>

[dram_dvfs_table]
LV_count = 3
LV1_freq = 0x20e6da00
LV1_volt = 1100
LV2_freq = 0x15752a00
LV2_volt = 1000
LV3_freq = 0
LV3_volt = 1000

[leds_para]
leds_used = 1
led_0 = port:PB10<1><default><default><0>
led_0_active_low = 0
led_1 = port:PE5<1><default><default><0>
led_1_active_low = 0
led_2 = port:PE6<1><default><default><0>
led_2_active_low = 0

[gpio_ir_key]
gpio_ir_used = 1
gpio_ir_io = port:PB13<2><1><default><default>

[1621_display]
gpio_used = 1
gpio_CS = port:PC4<1><default><default><1>
gpio_WD = port:PC5<1><default><default><0>
gpio_DATA = port:PB4<1><default><default><0>
```