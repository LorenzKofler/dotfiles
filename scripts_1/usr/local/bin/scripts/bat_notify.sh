#! /bin/bash
# Source: https://linoxide.com/remind-unplug-charging-laptop-arch-linux/

MIN_BAT=5
MAX_BAT=100

while true ; do
UNPLUGGED=`cat /sys/bus/acpi/drivers/battery/*/power_supply/BAT?/status|grep -i discharging`
BAT_PERCENTAGE=`cat /sys/bus/acpi/drivers/battery/*/power_supply/BAT?/capacity`

if [ $BAT_PERCENTAGE -le $MIN_BAT ]; then # Battery under low limit
 notify-send "Battery under $MIN_BAT. Please plug in the adapter"

elif [ $BAT_PERCENTAGE -ge $MAX_BAT ]; then # Battery over high limit
 if [ "$UNPLUGGED" == "" ]; then # plugged
 notify-send "Battery above $MAX_BAT. Please remove the adapter"
 fi
 fi
 sleep 10 #Repeat every 10 seconds

done

