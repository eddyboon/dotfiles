#!/bin/bash

device="$(networksetup -listallhardwareports |
grep -E '(Wi-Fi|AirPort)' -A 1 | grep -o "en.")"
[[ "$(networksetup -getairportpower $device)" == *On ]] && val=off || val=on
networksetup -setairportpower $device $val

sketchybar -m --set wifi popup.drawing=off
