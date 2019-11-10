#!/bin/bash -i
# Downclockaj graficku kartu

#podesi clock za odmor

echo "s 0 300 912" > /sys/class/drm/card0/device/pp_od_clk_voltage

#restart clock

echo 0 > /sys/class/drm/card0/device/pp_sclk_od
echo 1 > /sys/class/drm/card0/device/pp_sclk_od

#podesi memoriju za odmor

echo "m 0 300 912" > /sys/class/drm/card0/device/pp_od_clk_voltage

#restart memoriju
echo 0 > /sys/class/drm/card0/device/pp_mclk_od
echo 1 > /sys/class/drm/card0/device/pp_mclk_od
