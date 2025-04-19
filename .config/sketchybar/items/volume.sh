#!/usr/bin/env sh

sketchybar --add item volume right \
           --set volume script="$PLUGIN_DIR/volume.sh" \
           icon.padding_left=10 \
           icon.padding_right=10 \
           label.padding_right=10 \
           label.padding_left=0 \
           --subscribe volume volume_change
