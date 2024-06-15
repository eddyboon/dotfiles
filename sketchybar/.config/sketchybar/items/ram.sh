#!/bin/bash

sketchybar --add item ram right \
  --set ram update_freq=2 \
  icon=􂂇\
  icon.color=$PINK \
  label.color=$PINK \
  script="$PLUGIN_DIR/ram.sh"
