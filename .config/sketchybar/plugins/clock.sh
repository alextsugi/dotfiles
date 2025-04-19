#!/usr/bin/env sh

# The $NAME variable holds the name of the item invoking this script.

sketchybar --set "$NAME" label="$(date '+%a %h %d | %I:%M %p')"

