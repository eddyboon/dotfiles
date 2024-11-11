#!/bin/bash

# Comment out background.padding_right if using monitor to make music display in the center of the screen 

sketchybar --add item media center \
    --set media label.color=$ACCENT_COLOR \
    label.max_chars=20 \
    background.padding_right=300 \
    label.font="CaskaydiaCove Nerd Font:Italic:16.0"\
    icon.padding_left=0 \
    scroll_texts=on \
    icon=􀑪             \
    icon.color=$ACCENT_COLOR   \
    background.drawing=off \
    script="$PLUGIN_DIR/media.sh" \
    --subscribe media media_change\
