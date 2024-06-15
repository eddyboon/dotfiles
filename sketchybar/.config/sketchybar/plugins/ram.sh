#!/bin/bash

# Get the amount of used RAM in GB and round it to 2 decimal place
RAM_USED=$(neofetch | grep "Memory" | awk '{print $2}' | sed 's/[^0-9.]*//g' | awk '{printf "%.2f\n", $1*0.00105}')

sketchybar --set $NAME label="$RAM_USED GB used"
