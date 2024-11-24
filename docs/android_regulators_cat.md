### Stock Android regulators
```bash
for dir in $(echo /sys/devices/platform/reg-20*); do
  echo ${dir##*/}
  for file in $(echo "${dir}/*micro*"); do
    echo "    " ${file##*/} $(cat $file)
  done
done
```
```rb
reg-20-cs-dcdc2
     max_microamps 0
     max_microvolts 0
     min_microamps 0
     min_microvolts 1225000
reg-20-cs-dcdc3
     max_microamps 0
     max_microvolts 0
     min_microamps 0
     min_microvolts 3300000
reg-20-cs-ldo1
     max_microamps 0
     max_microvolts 0
     min_microamps 0
     min_microvolts 3300000
reg-20-cs-ldo2
     max_microamps 0
     max_microvolts 0
     min_microamps 0
     min_microvolts 3000000
reg-20-cs-ldo3
     max_microamps 0
     max_microvolts 0
     min_microamps 0
     min_microvolts 2700000
reg-20-cs-ldo4
     max_microamps 0
     max_microvolts 0
     min_microamps 0
     min_microvolts 3300000
reg-20-cs-ldoio0
     max_microamps 0
     max_microvolts 0
     min_microamps 0
     min_microvolts 2800000
```
```bash
for dir in $(echo /sys/bus/i2c/drivers/axp20_board/0-0034/axp-regulator.*/regulator/regulator.*); do
  echo ${dir##*/}
  for file in $(echo "${dir}/*"); do
    [ -f $file ] && echo "    " ${file##*/} $(cat $file)
  done
done
```
```rb
regulator.1
     max_microvolts 2275000
     microvolts 1225000
     min_microvolts 700000
     name axp20_dcdc2
     num_users 0
     state enabled
     suspend_disk_microvolts 0
     suspend_disk_state disabled
     suspend_mem_microvolts 0
     suspend_mem_state disabled
     suspend_standby_microvolts 0
     suspend_standby_state disabled
     type voltage
     uevent
regulator.2
     max_microvolts 3500000
     microvolts 3300000
     min_microvolts 700000
     name axp20_dcdc3
     num_users 0
     state enabled
     suspend_disk_microvolts 0
     suspend_disk_state disabled
     suspend_mem_microvolts 0
     suspend_mem_state disabled
     suspend_standby_microvolts 0
     suspend_standby_state disabled
     type voltage
     uevent
regulator.3
     max_microvolts 3300000
     microvolts 3300000
     min_microvolts 3300000
     name axp20_ldo1
     num_users 0
     state enabled
     suspend_disk_microvolts 0
     suspend_disk_state disabled
     suspend_mem_microvolts 0
     suspend_mem_state disabled
     suspend_standby_microvolts 0
     suspend_standby_state disabled
     type voltage
     uevent
regulator.4
     max_microvolts 3300000
     microvolts 3000000
     min_microvolts 1800000
     name axp20_ldo2
     num_users 0
     state enabled
     suspend_disk_microvolts 0
     suspend_disk_state disabled
     suspend_mem_microvolts 0
     suspend_mem_state disabled
     suspend_standby_microvolts 0
     suspend_standby_state disabled
     type voltage
     uevent
regulator.5
     max_microvolts 3500000
     microvolts 2700000
     min_microvolts 700000
     name axp20_ldo3
     num_users 3
     state enabled
     suspend_disk_microvolts 0
     suspend_disk_state disabled
     suspend_mem_microvolts 0
     suspend_mem_state disabled
     suspend_standby_microvolts 0
     suspend_standby_state disabled
     type voltage
     uevent
regulator.6
     max_microvolts 3300000
     microvolts 3300000
     min_microvolts 1250000
     name axp20_ldo4
     num_users 0
     state disabled
     suspend_disk_microvolts 0
     suspend_disk_state disabled
     suspend_mem_microvolts 0
     suspend_mem_state disabled
     suspend_standby_microvolts 0
     suspend_standby_state disabled
     type voltage
     uevent
regulator.7
     max_microvolts 3300000
     microvolts 2800000
     min_microvolts 1800000
     name axp20_ldoio0
     num_users 0
     state disabled
     suspend_disk_microvolts 0
     suspend_disk_state disabled
     suspend_mem_microvolts 0
     suspend_mem_state disabled
     suspend_standby_microvolts 0
     suspend_standby_state disabled
     type voltage
     uevent
```
```bash
for dir in $(echo /sys/bus/i2c/drivers/axp20_board/0-0034/axp20-supplyer.7/power_supply/*); do
  echo ${dir##*/}
  for file in $(echo "${dir}/*"); do
    [ -f $file ] && echo "    " ${file##*/} $(cat $file)
  done
done
```
```rb
battery
     adcfreq 100
     capacity 100
     chgcsttimemin 720
     chgen 1
     chgendcur 15
     chgintmicrocur 300000
     chgmicrovol 4200000
     chgpretimemin 50
     current_now 0
     energy_full_design 805
     health Good
     ihold 0
     iholden 0
     model_name battery
     online 0
     present 0
     status Full
     technology LiFe
     temp 300
     type Battery
     uevent POWER_SUPPLY_NAME=battery POWER_SUPPLY_MODEL_NAME=battery POWER_SUPPLY_STATUS=Full POWER_SUPPLY_PRESENT=0 POWER_SUPPLY_ONLINE=0 POWER_SUPPLY_HEALTH=Good POWER_SUPPLY_TECHNOLOGY=LiFe POWER_SUPPLY_VOLTAGE_MAX_DESIGN=4200000 POWER_SUPPLY_VOLTAGE_MIN_DESIGN=3300 POWER_SUPPLY_VOLTAGE_NOW=1000 POWER_SUPPLY_CURRENT_NOW=0 POWER_SUPPLY_ENERGY_FULL_DESIGN=805 POWER_SUPPLY_CAPACITY=100 POWER_SUPPLY_TEMP=300
     vhold 4000000
     vholden 1
     voltage_max_design 4200000
     voltage_min_design 3300
     voltage_now 1000
usb
     current_now 121000
     model_name usb
     online 1
     present 1
     type USB
     uevent POWER_SUPPLY_NAME=usb POWER_SUPPLY_MODEL_NAME=usb POWER_SUPPLY_PRESENT=1 POWER_SUPPLY_ONLINE=1 POWER_SUPPLY_VOLTAGE_NOW=4824000 POWER_SUPPLY_CURRENT_NOW=121000
     voltage_now 4824000
```
Cutoff from [script.fex](android_script_fex.md)
```ini
vip_dev0_iovdd = "vcc-pe"
vip_dev0_iovdd_vol = 0x1b7740 1.8V
vip_dev0_avdd = "vcc-pe"
vip_dev0_avdd_vol = 0x2932e0 2.7V
vip_dev0_dvdd = ""
vip_dev0_dvdd_vol = 0x124f80 1.2V
vip_dev0_afvdd = ""
vip_dev0_afvdd_vol = 0x2ab980 2.8V
dcdc2_vol = 1220
dcdc3_vol = 3300
aldo2_vol = 2500
aldo3_vol = 3000
ldo1_vol = 3300
ldo2_vol = 3000
ldo4_vol = 0
[pmu1_regu]
regulator_count = 7
regulator1 = "axp20_dcdc2 none vdd-sys vdd-cpu vdd-ephy"
regulator2 = "axp20_dcdc3 none vcc-io hpvcc vcc-pd vcc-usb vcc-ephy vcc-mcsi vcc-lcd vcc-wifi vcc-device vcc-csi vcc-ctp"
regulator3 = "axp20_ldo1 none vcc-rtc"
regulator4 = "axp20_ldo2 none  vcc-avcc vcc-pll"
regulator5 = "axp20_ldo3 none vcc-pe"
regulator6 = "axp20_ldo4 none"
regulator7 = "axp20_ldoio0 none"
```