#!/bin/bash

option=$(printf "Hyprland\nKitty\nWaybar\nSwayNC" | rofi -dmenu -p "Edit Config" -theme "~/.local/share/rofi/themes/rounded-nord-dark.rasi")

case "$option" in 
	"Hyprland") kitty --hold nvim "/home/floki/.config/hypr/hyprland.lua" ;;
	"Kitty") kitty --hold nvim "/home/floki/.config/kitty/kitty.conf" ;;
	"Waybar") kitty --hold nvim "/home/floki/.config/waybar/themes/dynamic-island/config.jsonc" ;;
	"SwayNC") kitty --hold nvim "/home/floki/.config/swaync/config.json" ;;
esac
