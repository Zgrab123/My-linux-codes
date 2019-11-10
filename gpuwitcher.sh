# Kernel Version 4.17.0-041700-generic
# Linux Mint 19.1 Cinnamon

#!/bin/bash -i

# Skripta koja podesava klok postavke graficke karte AMD RX 570, minimum kernel verzija 4.17
# jer tek od te verzije postoji mogucnost rucnog podesavanja brzina

# CLK clock              memory Clock    result
# MHz   mV
# 1150 987              1500   912       freeze 
# 1000 1000             1000   912        ? za sada radi, 20-25 FPS vrlo rijetko freeze

# podesi opciju low
echo low > /sys/class/drm/card0/device/power_dpm_force_performance_level
 
#podesi clock
echo "s 0 1000 1000" > /sys/class/drm/card0/device/pp_od_clk_voltage


#podesi memoriju
echo "m 0 1000 912" > /sys/class/drm/card0/device/pp_od_clk_voltage





#restart clock
echo 0 > /sys/class/drm/card0/device/pp_sclk_od
echo 1 > /sys/class/drm/card0/device/pp_sclk_od
#restart memoriju
echo 0 > /sys/class/drm/card0/device/pp_mclk_od
echo 1 > /sys/class/drm/card0/device/pp_mclk_od
