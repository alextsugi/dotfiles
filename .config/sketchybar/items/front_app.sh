#!/usr/bin/env sh

sketchybar --add item front_app left \
           --subscribe front_app front_app_switched \
           --set front_app \
           script="$PLUGIN_DIR/front_app.sh" \
           icon.padding_left=10 \
           icon.padding_right=0 \
           label.padding_left=10 \
           label.padding_right=10 \
           background.corner_radius=10 \
           background.color=$BLACK
