#!/bin/bash

sketchybar --add item cpu right \
  --set cpu update_freq=5 \
  icon=􀧓 \
  icon.color=$PEACH \
  label.color=$PEACH \
  script="$PLUGIN_DIR/cpu.sh"\
