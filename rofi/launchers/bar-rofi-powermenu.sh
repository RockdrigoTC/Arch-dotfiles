#!/bin/env bash


# Options for powermenu
lock=" Lock"
logout=" Logout"
shutdown=" Shutdown"
reboot=" Reboot"
sleep="⏾ Sleep"

# Get answer from user via rofi
selected_option=$(echo "$lock
$logout
$sleep
$reboot
$shutdown" | rofi -dmenu\
                  -i\
                  -p "Power"\
                  -height "30%"\
                  -lines 5\
                  -line-margin 3\
                  -line-padding 10\
                  -config "~/.config/rofi/configThemes/bar-rofi-powermenu.rasi" \
                  -scrollbar-width "0" )

# Do something based on selected option
if [ "$selected_option" == "$lock" ]
then
    betterlockscreen -l blur 
elif [ "$selected_option" == "$logout" ]
then
    bspc quit
elif [ "$selected_option" == "$shutdown" ]
then
    systemctl poweroff
elif [ "$selected_option" == "$reboot" ]
then
    systemctl reboot
elif [ "$selected_option" == "$sleep" ]
then
    betterlockscreen -l blur &
    systemctl suspend
else
    echo "No match"
fi
