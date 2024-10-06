#!/bin/bash

sketchybar --add item volume right \
  --set volume script="$PLUGIN_DIR/volume.sh" \
  icon.color=$LAVENDER \
  label.color=$LAVENDER \
  click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \
  popup.background.border_width=2\
  popup.background.corner_radius=5\
  popup.background.border_color=$BAR_COLOR\
  popup.background.color=$ITEM_BG_COLOR\
\
  --add item volume.mute popup.volume\
  --set volume.mute icon=􀊢\
  label="Toggle Mute"\
  icon.color=$LAVENDER \
  label.color=$LAVENDER \
  click_script="osascript -e 'set volume output muted not (output muted of (get volume settings))'; sketchybar -m --set volume popup.drawing=off"\
\
  --add item volume.up popup.volume\
  --set volume.up icon=􁜊\
  label="Increase Volume"\
  icon.color=$LAVENDER \
  label.color=$LAVENDER \
  click_script="osascript -e 'set volume output volume (output volume of (get volume settings)) + 5'"\
\
  --add item volume.down popup.volume\
  --set volume.down icon=􁜌\
  label="Decrease Volume"\
  icon.color=$LAVENDER \
  label.color=$LAVENDER \
  click_script="osascript -e 'set volume output volume (output volume of (get volume settings)) - 5'"\
  --subscribe volume volume_change \
