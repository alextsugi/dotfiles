#!/usr/bin/env sh

WHITE=0xffcad3f5
SPOTIFY_GREEN=0xff1db954

update_play() {
  PLAYER_STATE=$(osascript -e 'tell application "Spotify" to get player state')
  if [ "$PLAYER_STATE" = "playing" ]; then
    sketchybar --set "$NAME" icon.color="$SPOTIFY_GREEN"

    track=$(osascript -e 'tell application "Spotify" to name of current track & " - " & artist of current track')
    sketchybar --set spotify_track drawing=on label="$track"
  else
    sketchybar --set "$NAME" icon.color="$WHITE"
    sketchybar --set spotify_track drawing=off
  fi
}

update_shuffle() {
  SHUFFLE_ENABLED=$(osascript -e 'tell application "Spotify" to shuffling')
  if [ "$SHUFFLE_ENABLED" = "true" ]; then
    sketchybar --set spotify_shuffle icon.color="$SPOTIFY_GREEN"
  else
    sketchybar --set spotify_shuffle icon.color="$WHITE"
  fi
}

update_play
update_shuffle
