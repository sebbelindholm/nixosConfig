#!/bin/sh

COLOR=$(hyprpicker)

echo ${COLOR} | wl-copy -n 
notify-send "Color Picker" ${COLOR}