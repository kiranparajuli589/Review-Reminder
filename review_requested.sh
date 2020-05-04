#!/bin/bash

declare -a REQUEST_TIME_ARRAY
REQUEST_TIME_ARRAY=(103000 163000 232150)
while true 
do
	now=$(date +"%H%M%S")
	sleep 0.5
	if [[ " ${REQUEST_TIME_ARRAY[@]} " =~ " $now " ]]
	then
		notify-send "Hurray! Review Time"
		play attention-sound.mp3
		google-chrome https://github.com/pulls/review-requested --new-window
	fi
done
