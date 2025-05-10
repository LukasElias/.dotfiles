#!/bin/bash

monitor_orientation=$(hyprctl monitors | grep "transform" | tac -s " " | head -1) # Don't mind my pipes, I got pipes.sh running on my hyprland window shhhh

if [[ $monitor_orientation = "0" ]]; then
	hyprctl keyword monitor DP-2,transform,1
elif [[ $monitor_orientation = "1" ]]; then
	hyprctl keyword monitor DP-2,transform,0
fi
