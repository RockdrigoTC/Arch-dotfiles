#!/usr/bin/env sh

# Terminate already running bar instances
killall -q polybar

## Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

polybar emi-bar -c ~/.config/polybar/rockdri/polybar/config.ini &
## Launch polybar monitor external
if [ $(xrandr -q | grep "HDMI-1 connected" | cut -d ' ' -f1) = "HDMI-1" ]; then
	polybar emi-bar-External -c ~/.config/polybar/rockdri/polybar/config.ini &
fi
