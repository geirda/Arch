#!/bin/sh
while true;
do
	UPDATES="$(pacman -Qu|wc -l)"
	RAM="$(free -m | awk '/Mem/{ print $3 }')MB"
	DISKUSE="$(df -h | awk '/sda1/{ print $4 }')B"
	IP=$(ip addr | awk '/ global /{ print $2 }')
	DATO=$(date '+%a %d %b %H:%M')
	xsetroot -name " Updates: $UPDATES |  Ram use: $RAM |  Free space: $DISKUSE |  $IP |  $DATO"
	sleep 5;
done;
