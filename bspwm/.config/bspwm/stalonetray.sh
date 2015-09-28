#!/bin/bash

pkill -x dmenu

if [ $(pgrep -cf stalonetray) -gt 0 ]; then
	wid=$(xdotool search --class stalonetray)
	if [ "$(xdotool search --onlyvisible --class stalonetray)" != "" ]; then
		xdotool windowunmap $wid
	else
		xdotool windowmap $wid
		xdotool windowraise $wid
	fi
else
	xdotool search --class stalonetray
	stalonetray
fi