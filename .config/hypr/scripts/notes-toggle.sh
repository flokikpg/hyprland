#!/bin/bash

CLASS="kitty-notes"
WIDTH=600
HEIGHT=400
MON_W=1366
MON_H=768

X=$((MON_W - WIDTH))
Y=$(((MON_H - HEIGHT) / 2))

ADDR=$(hyprctl clients -j | jq -r \
  ".[] | select(.class==\"$CLASS\") | .address")

if [ -n "$ADDR" ]; then
    # toggle visibility
    hyprctl dispatch focuswindow address:$ADDR
    hyprctl dispatch movewindowpixel exact $X $Y,address:$ADDR
else
    hyprctl dispatch exec "[float; size $WIDTH $HEIGHT]" \
      kitty --title "kitty-notes" --class kitty-notes \
      --config ~/.config/kitty/yellow-notes.conf -e nano ~/notes.txt
    sleep 0.15
    ADDR=$(hyprctl clients -j | jq -r \
      ".[] | select(.class==\"$CLASS\") | .address")
    hyprctl dispatch focuswindow address:$ADDR
    hyprctl dispatch movewindowpixel exact $X $Y,address:$ADDR
fi

