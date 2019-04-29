#!/bin/bash


install_dir=$HOME/.customstuff

# file to store dark mode on/off
darkswitch=$install_dir/.dark

# used for Polybar; shows string variant
darktext=$install_dir/dark_text

# dark and light wallpapers to use
walldark=$install_dir/wallpaper_dark.jpg
walllight=$install_dir/wallpaper.jpg

status=$(cat "$darkswitch")

#if [ "$1" = "--no-toggle" ]; then
#	if [ "$status" = "1" ]; then feh --bg-fill "$walllight"
#	elif [ "$status" = "0"]; then feh --bg-fill "$walldark"
#	
#	
#fi

if [ "$status" = "1" ]; then
	feh --bg-fill "$walllight" &
	echo "Light" > $darktext
elif [ "$status" = "0" ]; then
	feh --bg-fill "$walldark" &
	echo "Dark" > $darktext
else 
	echo "Error in $darkswitch; only 0 or 1 permitted"
	exit
fi


# flip dark status
((status ^= 1))

echo $status > $darkswitch
