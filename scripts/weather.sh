#!/bin/sh
# This script requires a patched nerd font for the weather icons
# Please use the script yr.sh to collect the weather data

STI="$HOME/.cache/yr"

[ -f "$STI/data.txt" ] && WEATHER="$(head -1 $STI/data.txt)C" || WEATHER="X°C"
[ -f "$STI/varsel.xml" ] && CONDITIONS="$(grep enclosure $STI/varsel.xml | head -1 | cut -f2 -d \"| cut -f9 -d \/)" || IKON="*"

case "$CONDITIONS" in
01d.png)
	IKON=" "
	;;
01n.png)
	IKON=" "
	;;
02d.png)
	IKON=" "
	;;
02n.png)
	IKON=" "
	;;
03d.png)
	IKON=" "
	;;
03n.png)
	IKON=" "
	;;
04.png)
	IKON=" "
	;;
05d.png)
	IKON=" "
	;;
05n.png)
	IKON=" "
	;;
06d.png)
	IKON=" "
	;;
06n.png)
	IKON=" "
	;;
07d.png)
	IKON=" "
	;;
07n.png)
	IKON=" "
	;;
08d.png)
	IKON=" "
	;;
08n.png)
	IKON=" "
	;;
09.png)
	IKON=" "
	;;
10.png)
	IKON=" "
	;;
11.png)
	IKON=" "
	;;
12.png)
	IKON=" "
	;;
13.png)
	IKON=" "
	;;
14.png)
	IKON=" "
	;;
15.png)
	IKON=" "
	;;
esac

echo $IKON $WEATHER
