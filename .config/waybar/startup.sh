#!/usr/bin/bash

killall waybar
pkill waybar

theme="dark"

config_file="config.jsonc"
style_file="themes/$theme/style.css"

waybar -c ~/.config/waybar/$config_file -s ~/.config/waybar/$style_file
