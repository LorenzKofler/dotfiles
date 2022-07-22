#!/bin/bash
# Starts and kills picom

picom_pid=$(pidof picom)
if [[ -z $picom_pid ]]; then
    picom --experimental-backends &
else
    killall picom
fi
