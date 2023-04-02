#!/bin/bash

# ----------------------- #
# BSPWM CONFIGURATION     # 
# ----------------------- #

bspc monitor HDMI-1 --remove
bspc monitor eDP-1 --remove
xrandr --output eDP-1 --off
xrandr --output HDMI-1 --primary --auto --rotate normal --output eDP-1 --auto --rotate normal

bspc monitor HDMI-1 -d 1 2 3 4 5

## BSPWM CONFIG ========================== # 
~/.config/bspwm/scripts/bspcConfig

## BSPWM RULES ========================== # 

~/.config/bspwm/scripts/bspcRule

## AUTOSTART PROGRAMS ======================== # 
~/.config/bspwm/scripts/bspcPrograms "2"

## BSPWM COLORS ======================== #
. "${HOME}/.cache/wal/colors.sh"
bspc config normal_border_color "$color1"
bspc config active_border_color "$color1"
bspc config focused_border_color "$color3"
bspc config presel_feedback_color "$color3"