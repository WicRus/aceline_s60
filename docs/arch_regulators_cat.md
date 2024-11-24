### Arch 6.12 regulators
```bash
for dir in $(echo  /sys/bus/i2c/drivers/axp20x-i2c/0-0034/regulator/regulator.*); do
  echo ${dir##*/}
  for file in $(echo "${dir}/*"); do
    [ -f $file ] && echo "    " ${file##*/} $(cat $file)
  done
done
```
```rb
regulator.2
     microvolts 1300000
     name vdd-rtc
     num_users 1
     requested_microamps 0
     suspend_disk_state disabled
     suspend_mem_state disabled
     suspend_standby_state disabled
     type voltage
     uevent OF_NAME=ldo1 OF_FULLNAME=/soc/i2c@1c2ac00/pmic@34/regulators/ldo1 OF_COMPATIBLE_N=0
regulator.3
     max_microvolts 3000000
     microvolts 3000000
     min_microvolts 3000000
     name avcc
     num_users 2
     requested_microamps 0
     state enabled
     suspend_disk_state disabled
     suspend_mem_state disabled
     suspend_standby_state disabled
     type voltage
     uevent OF_NAME=ldo2 OF_FULLNAME=/soc/i2c@1c2ac00/pmic@34/regulators/ldo2 OF_COMPATIBLE_N=0
regulator.4
     max_microvolts 2700000
     microvolts 2700000
     min_microvolts 2700000
     name vcc-pe
     num_users 5
     requested_microamps 0
     state enabled
     suspend_disk_state disabled
     suspend_mem_state disabled
     suspend_standby_state disabled
     type voltage
     uevent OF_NAME=ldo3 OF_FULLNAME=/soc/i2c@1c2ac00/pmic@34/regulators/ldo3 OF_COMPATIBLE_N=0
regulator.5
     max_microvolts 0
     microvolts 3300000
     min_microvolts 0
     name ldo4
     num_users 0
     requested_microamps 0
     state disabled
     suspend_disk_state disabled
     suspend_mem_state disabled
     suspend_standby_state disabled
     type voltage
     uevent OF_NAME=ldo4 OF_FULLNAME=/soc/i2c@1c2ac00/pmic@34/regulators/ldo4 OF_COMPATIBLE_N=0
regulator.6
     max_microvolts 0
     microvolts 2800000
     min_microvolts 0
     name ldo5
     num_users 0
     requested_microamps 0
     state disabled
     suspend_disk_state disabled
     suspend_mem_state disabled
     suspend_standby_state disabled
     type voltage
     uevent
regulator.7
     max_microvolts 1225000
     microvolts 1225000
     min_microvolts 1025000
     name vdd-sys-cpu
     num_users 1
     requested_microamps 0
     state enabled
     suspend_disk_state disabled
     suspend_mem_state disabled
     suspend_standby_state disabled
     type voltage
     uevent OF_NAME=dcdc2 OF_FULLNAME=/soc/i2c@1c2ac00/pmic@34/regulators/dcdc2 OF_COMPATIBLE_N=0
regulator.8
     max_microvolts 3300000
     microvolts 3300000
     min_microvolts 3300000
     name vdd-3v3
     num_users 3
     requested_microamps 0
     state enabled
     suspend_disk_state disabled
     suspend_mem_state disabled
     suspend_standby_state disabled
     type voltage
     uevent OF_NAME=dcdc3 OF_FULLNAME=/soc/i2c@1c2ac00/pmic@34/regulators/dcdc3 OF_COMPATIBLE_N=0
```
