#!/bin/bash


install_dir=$HOME/.customstuff

# file to store dark mode on/off
darkswitch=$install_dir/.dark

# used for Polybar; shows string variant
darktext=$install_dir/dark_text

# dark and light wallpapers to use
walldark=$install_dir/wallpaper_dark.jpg
walllight=$install_dir/wallpaper.jpg

wallpaper=$walldark

status=$(cat "$darkswitch")



## echoes the status i.e. Dark / Light to stdout
printStatus() {
	if [ "$status" = "0" ]; then 
		echo "Dark"
	else 
		echo "Light"
	fi
	exit
}

## actually sets the background
setBackground() {
	feh --bg-fill "$wallpaper" &
}

## load $wallpaper variable
getBackground() {
	if [ "$status" = "1" ]; then
	       	wallpaper=$walldark
        elif [ "$status" = "0" ]; then
        	wallpaper=$walllight
        else 
        	echo "Error in $darkswitch; only 0 or 1 permitted"
        	exit
        fi
}

if [ "$1" = "--status" ]; then
	printStatus
fi

getBackground
setBackground


## don't flip if we're not toggling
if [ "$1" = "--no-toggle" ]; then exit; fi

# flip dark status
((status ^= 1))

echo $status > $darkswitch
echo $status

