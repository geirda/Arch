#!/bin/sh

GRAY="^c#444444^"
RED="^c#bf616a^"
GREEN="^c#a3be8c^"
YELLOW="^c#ebcb8b^"
BLUE="^c#81a1c1^"
MAGENTA="^c#b48ead^"
CYAN="^c#88c0d0^"
WHITE="^c#c5c9d0^"
ORANGE="^c#de935f^"

while true;
do
	UPDATES="$(head -1 /var/local/updates.txt) aur: $(tail -1 /var/local/updates.txt)"
	RAM="$(free -m | awk '/Mem/{ print $3 }')MB"
	HEAT="$(sensors | awk '/Core 0/{ print $3 }') $(sensors | awk '/Core 1/{ print $3 }')"
	DISKUSE="$(df -h | awk '/\/$/{ print $4 }')B"
	IP=$(ip addr | awk '/ global /{ print $2 }'|head -1|cut -f1 -d \/)
	WEATHER=$(~/.local/bin/weather.sh)
	DATO=$(date '+uke %V:^c#b48ead^ %a%d')
	MONTH=$(date '+%b'|cut -b1-3)
	KLOKKEIKON=$(~/.local/bin/hour.sh)
	KLOKKE=$(date '+%H:%M')
	xsetroot -name " ${GREEN}updates: $UPDATES ${GRAY}|^d^  ${BLUE}mem: $RAM ${GRAY}|^d^  ${RED}$HEAT ${GRAY}|^d^  ${CYAN}free: $DISKUSE ${GRAY}|^d^  ${YELLOW}$IP ${GRAY}|^d^ ${WHITE}$WEATHER ${GRAY}|^d^  ${GREEN}$DATO.$MONTH ^d^$KLOKKEIKON ${BLUE}$KLOKKE "
	sleep 5;
done;
