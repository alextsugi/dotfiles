#!/usr/bin/env sh

sketchybar --add bracket spotify_bracket spotify_next spotify_play spotify_prev spotify_shuffle volume \
           --set spotify_bracket \
           background.corner_radius=10 \
           background.color=$BLACK \
           background.height=50 \
           background.drawing=on
