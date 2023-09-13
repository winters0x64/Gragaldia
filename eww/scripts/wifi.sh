#!/bin/bash

status=$(nmcli g | grep -oE "disconnected")
essid=$(nmcli c | grep wlp1s0 | awk '{print ($1)}')

if [ $status ] ; then
    icon="󰖪"
    text=""
    col="#575268"

else
    icon="󰖩"
    text="${essid}"
    col="#ffffff"
fi

if [[ "$1" == "--COL" ]]; then
    echo $col	
elif [[ "$1" == "--ESSID" ]]; then
	echo $text
elif [[ "$1" == "--ICON" ]]; then
	echo $icon
fi
