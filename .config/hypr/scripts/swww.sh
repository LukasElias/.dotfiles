#!/bin/bash

swww kill
swww-daemon &

swww img $(find ~/wallpapers/ -type f | shuf -n 1)
