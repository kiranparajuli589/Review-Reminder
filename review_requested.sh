#!/bin/bash
echo "This is user ${USERNAME} with token ${GIT_ACCESS_TOKEN}"
declare -a REQUEST_TIME_ARRAY
REQUEST_TIME_ARRAY=(103000 163000)
while true 
do
	now=$(date +"%H%M%S")
	sleep 0.5
	if [[ " ${REQUEST_TIME_ARRAY[@]} " =~ " $now " ]]
	then
		curl -u $USERNAME:$GIT_ACCESS_TOKEN https://api.github.com/search/issues\?q\=is:pr+state:open+review-requested:${USERNAME}+archived:false | jq ".total_count" > output.json
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
