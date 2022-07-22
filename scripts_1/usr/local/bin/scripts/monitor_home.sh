#!/bin/bash
wlr-randr \
	--output eDP-1 --off \
	--output DP-1 --mode 1920x1080 --pos 2560,300 --transform normal --on \
	--output DP-2 --mode 2560x1440 --pos 0,0 --transform normal --on \
