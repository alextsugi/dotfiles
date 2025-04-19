#!/usr/bin/env sh

FOCUSED_WORKSPACE=${FOCUSED_WORKSPACE:-$INITIAL_WORKSPACE}

if [ "$1" = "$FOCUSED_WORKSPACE" ]; then
  sketchybar --set $NAME background.drawing=on label.color=0xff181926
else
  sketchybar --set $NAME background.drawing=off label.color=0xffcad3f5
fi
