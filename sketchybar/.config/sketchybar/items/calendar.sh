#!/bin/bash

sketchybar --add item calendar right \
  --set calendar icon=􀉉 \
  icon.color=$SAPPHIRE \
  --set calendar label.color=$SAPPHIRE \
  update_freq=1 \
  script="$PLUGIN_DIR/calendar.sh"\
