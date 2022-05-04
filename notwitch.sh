#!/bin/env bash

read -p "Whom'st do you want to consom : " STREAMER
MPV=$(mpv "https://www.twitch.tv/$STREAMER")
MESSAGE=$(echo "$MPV" | grep 'No summary')
if echo "$MESSAGE"; then 
	echo "no consom for you"
	exit 0
fi
