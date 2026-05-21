{
  "layer": "top",
  "margin": 4,
  "modules-left": [
    "custom/launcher", "clock", "custom/pacman", "custom/media"
  ],
  "modules-center": [
    "hyprland/workspaces"
  ],
  "modules-right": [
    "custom/home-folder",
    "network",
    "pulseaudio", 
    "custom/power"
  ],
  "hyprland/window": {
    "max-length": 50
  },
  "hyprland/workspaces": {
	 "format": "{name}",
        "persistent-workspaces": {
                "*": 5
        }
    },    
  "network": {
	"format-ethernet":"   ",
        "format-wifi":"   ",
        "format-disconnected":" 󰖪  ",
        "tooltip-format":"Connected to {ipaddr}",
        "tooltip-format-wifi":"Connected to {essid}",
        "on-click":"hyprctl dispatch exec '[float]''kitty -e nmtui'",
        "format-linked":"{ifname} (No IP) "
  },
  "pulseaudio": {
	"format": "{icon}",
        "format-bluetooth": "{volume}% {icon} {format_source}",
        "format-bluetooth-muted": " {icon} {format_source}",
        "format-muted": " 󰖁  ",
        "format-icons": {
            "default": [" ", " ", " "]
        },
        "tooltip-format": "{volume}% volume",
        "on-click": "pactl set-sink-mute @DEFAULT_SINK@ toggle",
        "on-click-right": "pavucontrol"
  },
  "clock": {
      "format": "{:%H:%M}",
      "format-alt": "{:%A, %B %d, %Y}",
      "tooltip-format": "<tt><small>{calendar}</small></tt>",
      "calendar": {
          "mode"          : "month",
          "mode-mon-col"  : 3,
          "weeks-pos"     : "right",
          "on-scroll"     : 1,
          "format": {
                    "months":     "<span color='#ffead3'><b>{}</b></span>",
                    "today":      "<span color='#ff6699'><b>{}</b></span>",
                    "weeks":      "<span color='#99ffdd'><b>W{}</b></span>"
          }
      }
  },
  "custom/media": {
    "format": "{}",
    "exec": "$HOME/.config/waybar/scripts/mediaplayer.py 2> /dev/null", // Script in resources/custom_modules folder.
    "escape": true,
    "return-type": "json",
    "max-length": 40,
    "on-click": "playerctl play-pause",
    "on-click-right": "playerctl stop",
    "smooth-scrolling-threshold": 1, // This value was tested using a trackpad, it should be lowered if using a mouse.
    "on-scroll-up": "playerctl next",
    "on-scroll-down": "playerctl previous"
  },
  "custom/pacman": {
    "format": " 󰅢 {}",
    "interval": "once",
    "exec": "checkupdates | wc -l",
    "on-click": "kitty --hold yay -Syu",
    "signal": 8,
    "tooltip-format": "{} updates available"
  }, 
  "custom/home-folder": {
    "format": "󱧶 {}",
    "interval": "once",
    "exec": "ls -l | wc -l",
    "on-click": "kitty --hold ls -l",
    "tooltip-format": "{} total files and folders in /"
  },   
  "custom/power": {
    "format": " ", 
    "tooltip": "Power Options",
    "on-click": "wlogout", 
    "on-right-click": "systemctl suspend" 
  }
}
