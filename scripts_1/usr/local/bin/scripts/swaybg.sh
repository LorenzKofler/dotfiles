#!/bin/sh
killall -q swaybg
swaybg -i $(find /home/lorenz/pics/wallpaper2 -type f | shuf -n1) -m stretch &
