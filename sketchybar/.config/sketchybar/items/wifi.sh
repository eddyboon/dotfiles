#!/bin/bash

sketchybar --add item wifi right \
  --set wifi script="$PLUGIN_DIR/wifi.sh" \
  --set wifi click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \
  icon.color=$BLUE \
    popup.background.border_width=2\
    popup.background.corner_radius=5\
    popup.background.border_color=$BAR_COLOR\
    popup.background.color=$ITEM_BG_COLOR\
\
    --add item wifi.name popup.wifi\
    --set wifi.name script="$PLUGIN_DIR/display_wifi_name.sh" \
    --set wifi.name icon.color=$BLUE \
    --set wifi.name click_script="$PLUGIN_DIR/wifi_clicked.sh"\
    --subscribe wifi.name wifi_change\
\
  update_freq=1 \
  --subscribe wifi wifi_change
