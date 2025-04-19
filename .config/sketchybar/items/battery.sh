#!/usr/bin/env sh

sketchybar --add item battery right \
           --subscribe battery system_woke power_source_change \
           --set battery \
           update_freq=120 \
           background.color=$BLACK \
           background.corner_radius=10 \
           background.padding_left=10 \
           icon.padding_left=15 \
           icon.padding_right=10 \
           label.padding_left=0 \
           label.padding_right=15 \
           script="$PLUGIN_DIR/battery.sh"
