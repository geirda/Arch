#!/bin/sh
HOUR=$(date '+%l' | awk '{ print $1 }')
case "$HOUR" in
1)
	ICON=" "
	;;
2)
	ICON=" "
	;;
3)
	ICON=" "
	;;
4)
	ICON=" "
	;;
5)
	ICON=" "
	;;
6)
	ICON=" "
	;;
7)
	ICON=" "
	;;
8)
	ICON=" "
	;;
9)
	ICON=" "
	;;
10)
	ICON=" "
	;;
11)
	ICON=" "
	;;
12)
	ICON=" "
	;;
esac

echo $ICON
