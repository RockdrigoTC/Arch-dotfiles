#! /bin/sh
wal -i $(cat ~/.config/.wallpaper) &
betterlockscreen -u $(cat ~/.config/.wallpaper) &
sleep 1 

. "${HOME}/.cache/wal/colors.sh" 
bspc config normal_border_color "$color1"
bspc config active_border_color "$color1"
bspc config focused_border_color "$color3"
bspc config presel_feedback_color "$color3"