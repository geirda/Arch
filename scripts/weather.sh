#!/bin/sh
# This script requires a patched nerd font for the weather icons
# Depends upon the script yr.sh to retrieve weather data

STI="$HOME/.cache/yr"

[ -f "$STI/data.txt" ] && WEATHER="$(head -1 $STI/data.txt)C" || WEATHER="X°C"
[ -f "$STI/varsel.xml" ] && CONDITIONS="$(grep enclosure $STI/varsel.xml | head -1 | cut -f2 -d \"| cut -f9 -d \/)" || IKON="*"

case "$CONDITIONS" in
	01d.png)	IKON=" "	;;
	01n.png)	IKON=" "	;;
	02d.png)	IKON=" "	;;
	02n.png)	IKON=" "	;;
	03d.png)	IKON=" "	;;
	03n.png)	IKON=" "	;;
	04.png)		IKON=" "	;;
	05d.png)	IKON=" "	;;
	05n.png)	IKON=" "	;;
	06d.png)	IKON=" "	;;
	06n.png)	IKON=" "	;;
	07d.png)	IKON=" "	;;
	07n.png)	IKON=" "	;;
	08d.png)	IKON=" "	;;
	08n.png)	IKON=" "	;;
	09.png)		IKON=" "	;;
	10.png)		IKON=" "	;;
	11.png)		IKON=" "	;;
	12.png)		IKON=" "	;;
	13.png)		IKON=" "	;;
	14.png)		IKON=" "	;;
	15.png)		IKON=" "	;;
	20d.png)	IKON=" "	;;
	20n.png)	IKON=" "	;;
	21d.png)	IKON=" "	;;
	21n.png)	IKON=" "	;;
	22.png)		IKON=" "	;;
	23.png)		IKON=" "	;;
	24d.png)	IKON=" "	;;
	24n.png)	IKON=" "	;;
	25d.png)	IKON=" "	;;
	25n.png)	IKON=" "	;;
	26d.png)	IKON=" "	;;
	26n.png)	IKON=" "	;;
	27d.png)	IKON=" "	;;
	27n.png)	IKON=" "	;;
	28d.png)	IKON=" "	;;
	28n.png)	IKON=" "	;;
	29d.png)	IKON=" "	;;
	29n.png)	IKON=" "	;;
	30.png)		IKON=" "	;;
	31.png)		IKON=" "	;;
	32.png)		IKON=" "	;;
	33.png)		IKON=" "	;;
	34.png)		IKON=" "	;;
	40d.png)	IKON=" "	;;
	40n.png)	IKON=" "	;;
	41d.png)	IKON=" "	;;
	41n.png)	IKON=" "	;;
	42d.png)	IKON=" "	;;
	42n.png)	IKON=" "	;;
	43d.png)	IKON=" "	;;
	43n.png)	IKON=" "	;;
	44d.png)	IKON=" "	;;
	44n.png)	IKON=" "	;;
	45d.png)	IKON=" "	;;
	45n.png)	IKON=" "	;;
	46.png)		IKON=" "	;;
	47.png)		IKON=" "	;;
	48.png)		IKON=" "	;;
	49.png)		IKON=" "	;;
	50.png)		IKON=" "	;;
esac

echo $IKON $WEATHER
