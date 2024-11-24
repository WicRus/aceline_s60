### Stock Android gpio
```bash
root@camdroid:/ # cat /sys/kernel/debug/gpio

GPIOs 0-223, platform/sunxi-pinctrl, sunxi-pinctrl:
 gpio-32  (xradio_irq          ) in  lo             # PB0     wifi
 gpio-36  (?                   ) out lo             # PB4     display
 gpio-37  (?                   ) out lo             # PB5     audio
 gpio-42  (led_0               ) out lo             # PB15    led
 gpio-43  (?                   ) in  hi             # PB16
 gpio-44  (?                   ) in  lo             # PB17
 gpio-68  (?                   ) out hi             # PC4     display
 gpio-69  (?                   ) out hi             # PC5     display
 gpio-129 (?                   ) in  lo             # PE1     csi_power_en
 gpio-133 (led_1               ) out hi             # PE5     led
 gpio-134 (led_2               ) out lo             # PE6     led
 gpio-146 (?                   ) in  hi             # PE18    csi_reset
 gpio-147 (?                   ) in  hi             # PE19    csi_pwdn
 gpio-148 (?                   ) in  lo             # PE20    csi_mck
 gpio-166 (cd                  ) in  hi             # PF6     mmc0
 gpio-205 (?                   ) in  lo             # PG13    hdmi

GPIOs 1024-1031, platform/axp-pinctrl, axp-pinctrl:
```