#!/usr/bin/bash

killall waybar
pkill waybar

config_file="config.jsonc"
style_file="style.css"

waybar -c ~/.config/waybar/$config_file -s ~/.config/waybar/$style_file
