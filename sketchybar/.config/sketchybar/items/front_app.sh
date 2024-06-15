#!/bin/bash

sketchybar --add item front_app left \
    --set front_app background.color=$FLAMINGO \
    icon.color=$MAUVE \
    icon.font="sketchybar-app-font:Regular:16.0" \
    label.color=$MAUVE \
    label.font="CaskaydiaCove Nerd Font:Italic:17.0" \
    script="$PLUGIN_DIR/front_app.sh" \
    --subscribe front_app front_app_switched
