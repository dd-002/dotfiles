#!/usr/bin/env bash

WALLPAPER_DIR="/home/dd002/wallpapers/"
CURRENT_WALL=$(hyprctl hyprpaper listloaded)

# Get a random wallpaper that is not the current one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f ! -name "$(basename "$CURRENT_WALL")" | shuf -n 1)

echo $WALLPAPER
# Apply the selected wallpaper
hyprctl hyprpaper reload eDP-1,"$WALLPAPER"
