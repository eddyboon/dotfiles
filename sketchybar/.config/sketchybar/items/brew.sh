#!/bin/bash

sketchybar --add event brew_update \
           --add item brew right   \
		   --set brew update_freq=1800 \
		   icon=􀐛 \
		   label=? \
		   script="$PLUGIN_DIR/brew.sh"\
           --subscribe brew brew_update
