#!/usr/bin/env bash

pkill waybar
pkill swaync

swaync &


# waybar -c ~/.config/waybar/themes/pywal-fl/config.jsonc -s ~/.config/waybar/themes/pywal-fl/style.css &
# waybar -c ~/.config/waybar/themes/tokyonight-fl/config.jsonc -s ~/.config/waybar/themes/tokyonight-fl/style.css &
# waybar -c ~/.config/waybar/themes/toknight/config.jsonc -s ~/.config/waybar/themes/toknight/style.css &
# waybar -c ~/.config/waybar/themes/minimal-fl/config.jsonc -s ~/.config/waybar/themes/minimal-fl/style.css & 
# waybar -c ~/.config/waybar/themes/tkymin-fl/config.jsonc -s ~/.config/waybar/themes/tkymin-fl/style.css & 
# waybar -c ~/.config/waybar/themes/mysetup/config.jsonc -s ~/.config/waybar/themes/mysetup/style.css &
# waybar -c ~/.config/waybar/themes/dynamic-island/config.jsonc -s ~/.config/waybar/themes/dynamic-island/style.css &
# waybar -c ~/.config/waybar/themes/josean-sty/config.jsonc -s ~/.config/waybar/themes/josean-sty/style.css &
waybar -c ~/.config/waybar/themes/gruvbox/config.jsonc -s ~/.config/waybar/themes/gruvbox/style.css &
