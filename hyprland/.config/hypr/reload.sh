#!/usr/bin/bash

# Reload WAYBAR
killall waybar; waybar

# Reload BG Music Visualizer
killall alacritty
alacritty --config-file="/home/matheo/.config/hypr/alacrittybg.toml" --class "cavabg" -e cava -p ~/.config/hypr/config  
