#!/bin/bash

sketchybar --add item brew right \
  --set brew update_freq=3600 \
  icon=􀐛\
  label=?\
  script="$PLUGIN_DIR/brew.sh"
