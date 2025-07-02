#!/bin/sh

WALLPAPER_DIR="$HOME/Imágenes/Wallpapers/"
RANDOM_WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)
pgrep -x hyprpaper || hyprpaper &

CONFIG_PATH="/tmp/hyprpaper.conf"
echo "preload = $RANDOM_WALLPAPER" > "$CONFIG_PATH"
echo "wallpaper = ,$RANDOM_WALLPAPER" >> "$CONFIG_PATH"

hyprpaper -c $CONFIG_PATH
