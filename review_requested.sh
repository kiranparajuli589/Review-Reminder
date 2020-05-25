#!/bin/bash

declare -a REQUEST_TIME_ARRAY
REQUEST_TIME_ARRAY=(103000 163000)
while true 
do
	now=$(date +"%H%M%S")
	sleep 0.5
	if [[ " ${REQUEST_TIME_ARRAY[@]} " =~ " $now " ]]
	then
		curl -u kiranparajuli589:00f3699c8f17539ce7c4af2a79603de6c4996b4a https://api.github.com/search/issues\?q\=is:pr+state:open+review-requested:kiranparajuli589+archived:false | jq ".total_count" > output.json
		count=`cat output.json`
		if [[ $count -gt 1 ]]
		then
				notify-send "Hurray! Review Time. You've ${count} review requests."
				play attention-sound.mp3
				google-chrome https://github.com/pulls/review-requested --new-window
		else
				notify-send "Cheers! No reviews requested"
		fi
	fi
done
