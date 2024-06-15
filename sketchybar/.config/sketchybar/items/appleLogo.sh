#!/bin/bash

sketchybar --add item apple.logo left \
    --set apple.logo icon=􀣺 \
    icon.font="SF Pro:Black:16.0" \
    icon.color=$SKY \
    background.color=$BAR_COLOR \
    label.drawing=off \
    click_script="sketchybar -m --set \$NAME popup.drawing=toggle" \
    popup.background.border_width=2\
    popup.background.corner_radius=5\
    popup.background.border_color=$BAR_COLOR\
    popup.background.color=$ITEM_BG_COLOR\
\
    --add item apple.preferences popup.apple.logo\
    --set apple.preferences icon=􀍟\
    label="Bar Preferences"\
    click_script="code ~/.config/sketchybar/; 
    sketchybar -m --set apple.logo popup.drawing=off"\
\
    --add item sketchbar.reload popup.apple.logo\
    --set sketchbar.reload icon=􀅈\
    label="Reload Bar"\
    click_script="sketchybar --reload; sketchybar -m --set apple.logo popup.drawing=off"\
\
    --add item apple.shutdown popup.apple.logo\
    --set apple.shutdown icon=􀆨\
    label="Shutdown"\
    click_script="osascript -e 'tell app \"System Events\" to shut down'; sketchybar -m --set apple.logo popup.drawing=off"\

