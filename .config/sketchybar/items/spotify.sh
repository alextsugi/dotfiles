#!/usr/bin/env sh

SPOTIFY_PLAYPAUSE="osascript -e 'tell application \"Spotify\" to playpause'"
SPOTIFY_NEXT_TRACK="osascript -e 'tell application \"Spotify\" to next track'"
SPOTIFY_PREV_TRACK="osascript -e 'tell application \"Spotify\" to previous track'"
SPOTIFY_TOGGLE_SHUFFLING="osascript -e 'tell application \"Spotify\"
  set shuffling to not shuffling
end tell'"
SPOTIFY_OPEN="open -a Spotify"

SPOTIFY_EVENT="com.spotify.client.PlaybackStateChanged"
sketchybar --add event spotify_update $SPOTIFY_EVENT
sketchybar --add item spotify_next right \
           --set spotify_next \
           click_script="$SPOTIFY_NEXT_TRACK" \
           icon=$SPOTIFY_NEXT \
           icon.padding_left=10 \
           icon.padding_right=0 \
           label.padding_right=10 \
           label.padding_left=0 \
\
           --add item spotify_play right \
           --subscribe spotify_play spotify_update \
           --set spotify_play \
           click_script="$SPOTIFY_PLAYPAUSE" \
           script="$PLUGIN_DIR/spotify.sh" \
           icon=$SPOTIFY_PLAY_PAUSE \
           icon.padding_left=10 \
           icon.padding_right=0 \
           label.padding_right=10 \
           label.padding_left=0 \
\
           --add item spotify_prev right \
           --set spotify_prev \
           click_script="$SPOTIFY_PREV_TRACK" \
           icon=$SPOTIFY_BACK \
           icon.padding_left=10 \
           icon.padding_right=0 \
           label.padding_right=10 \
           label.padding_left=0 \
\
           --add item spotify_shuffle right \
           --set spotify_shuffle \
           click_script="$SPOTIFY_TOGGLE_SHUFFLING" \
           script="$PLUGIN_DIR/spotify.sh shuffle" \
           icon=$SPOTIFY_SHUFFLE \
           icon.padding_left=10 \
           icon.padding_right=0 \
           label.padding_right=10 \
           label.padding_left=0 \
\
           --add item spotify_track right \
           --set spotify_track \
           click_script="$SPOTIFY_OPEN" \
           icon.drawing=off \
           drawing=off \
           background.corner_radius=10 \
           background.height=50 \
           background.padding_right=10 \
           background.color=$SPOTIFY_GREEN \
           label.color=$BLACK \
           label.padding_left=10 \
           label.padding_right=10
