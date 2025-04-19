#!/usr/bin/env bash

INITIAL_WORKSPACE=$(aerospace list-workspaces --focused)
sketchybar --add event aerospace_workspace_change
for sid in $(aerospace list-workspaces --all); do
  # See: https://felixkratz.github.io/SketchyBar/config/items#adding-items-to-sketchybar
  sketchybar --add item space."$sid" left \
             --subscribe space."$sid" aerospace_workspace_change \
             --set space."$sid" \
             background.color=$GREEN \
             background.corner_radius=5 \
             background.height=50 \
             background.drawing=off \
             label="$sid" \
             label.font.size=14.0 \
             label.padding_left=10 \
             label.padding_right=10 \
             icon.padding_left=0 \
             icon.padding_right=0 \
             click_script="aerospace workspace $sid" \
             script="INITIAL_WORKSPACE=$INITIAL_WORKSPACE $PLUGIN_DIR/aerospace.sh $sid"
done
