#!/bin/bash
source $CONFIG_DIR/colors.sh

CURRENT_WIFI="$(networksetup -listallhardwareports | awk '/Wi-Fi/{getline; print $2}' | xargs networksetup -getairportnetwork | sed "s/Current Wi-Fi Network: //")"

if [[ $CURRENT_WIFI == "You are not associated with an AirPort network."* ]]; then
  sketchybar --set $NAME label="Not Connected" icon=􀙈;
  sketchybar --set $NAME label.color=$RED icon.color=$RED;
else
  sketchybar --set $NAME label="$CURRENT_WIFI" icon=􀙇;
  sketchybar --set $NAME label.color=$BLUE icon.color=$BLUE;
fi
