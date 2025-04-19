#!/usr/bin/env sh

case $INFO in
"Ghostty")
    ICON=􀩼
    ;;
"Calendar")
    ICON=􀉉
    ;;
"FaceTime")
    ICON=􀍉
    ;;
"Finder")
    ICON=􀈹
    ;;
"Safari")
    ICON=􀎬
    ;;
"Messages")
    ICON=􀌤
    ;;
"Preview")
    ICON=􀉅
    ;;
"Spotify")
    ICON=
    ;;
"TextEdit")
    ICON=􀉆
    ;;
*)
    ICON=
    ;;
esac

if [ "$SENDER" = "front_app_switched" ]; then
  sketchybar --set "$NAME" icon=$ICON label="$INFO"
fi
