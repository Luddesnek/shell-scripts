#!/bin/env bash

read -p "[Whom'st do you want to consom]$ " STREAMER
MPV=$(mpv "https://www.twitch.tv/$STREAMER")
MESSAGE=$(echo "$MPV" | awk '/offline/ {print $5,$6,$7}')
if echo "$MESSAGE"; then 
	echo "no consom for you"
	exit 0
fi
