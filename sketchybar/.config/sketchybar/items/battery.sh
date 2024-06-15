#!/bin/bash

sketchybar --add item battery right \
    --set battery update_freq=20 \
    script="$PLUGIN_DIR/battery.sh" \
    icon.color=$GREEN \
    label.color=$GREEN \
    --subscribe battery system_woke power_source_changed
