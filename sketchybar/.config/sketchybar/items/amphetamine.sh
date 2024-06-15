#!/bin/bash

sketchybar --add alias Amphetamine right\
    --set Amphetamine alias.color=$RED\
    label.drawing=off\
    icon.drawing=off\
    click_script="osascript -e 'tell application \"Amphetamine\" to set sessionActiveTest to session is active' -e 'if sessionActiveTest is false then' -e 'tell application \"Amphetamine\" to start new session' -e 'else' -e 'tell application \"Amphetamine\" to end session' -e 'end if'"\
