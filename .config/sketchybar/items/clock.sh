#!/usr/bin/env sh

sketchybar --add item clock center \
           --set clock \
           update_freq=10 \
           icon=$CLOCK \
           script="$PLUGIN_DIR/clock.sh" \
           icon.padding_left=18 \
           label.padding_right=18 \
           background.corner_radius=10 \
           background.color=$BLACK
