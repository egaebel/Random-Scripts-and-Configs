#!/bin/bash

if [ "$1" = "laptop" ]; then
	#Laptop Screen
	xrandr --output HDMI1 --off
	xrandr --output LVDS1 --mode 1280x800
	xrandr --output HDMI3 --off
	echo "LAPTOP SCREEN FOR...."
fi

if [ "$1" = "double-samsung" ]; then
	#Dual Monitors (Samsungs)
	xrandr --output HDMI1 --mode 1920x1080 
	xrandr --output LVDS1 --off
	xrandr --output HDMI3 --mode 1920x1080 --right-of HDMI1
	echo "DOUBLE MONITORS FTW"
fi
