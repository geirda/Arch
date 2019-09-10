#!/bin/sh
 while true;
do
	RAM="$(free -m | awk '/Mem/{ print $3 }')MB"
	DISKUSE="$(df -h | awk '/sda1/{ print $4 }')B"
	IP=$(ip addr | awk '/ global /{ print $2 }')
	DATO=$(date '+%a %d %b %H:%M')
	xsetroot -name "Ram use: $RAM | Free space: $DISKUSE | IP: $IP | $DATO"
	sleep 5;
done;
