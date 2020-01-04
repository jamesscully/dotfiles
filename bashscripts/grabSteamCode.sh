#!/bin/bash

# uses KDEConnect to retrieve Steam login notifications; then copy to clipboard

dbus-monitor "interface='org.freedesktop.Notifications',member='Notify'" |

while read -r line; do

	if [[ $line == *"New Steam"* ]]; then

		# code will always be the last 5 characters (excl. quotes from dbus output)
		authCode=${line: -6:5}
		
		
		notify-send "Copied $authCode to clipboard"
		
		# copy to clipboard
		echo -n $authCode | xclip -selection clipboard	
	fi

done
	
