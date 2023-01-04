#!/bin/sh
# This script requires a patched nerd font for the weather icons

STI="$HOME/Debian/.cache/yr"

[ -f "$STI/data.txt" ] && WEATHER="$(head -1 $STI/data.txt)°C" || WEATHER="X°C"
[ -f "$STI/data2.txt" ] && CONDITIONS="$(head -1 $STI/data2.txt)" || IKON="X"

case "$CONDITIONS" in
	clearsky_day)		IKON=" "	;;
	clearsky_night)		IKON=" "	;;
	fair_day)		IKON=" "	;;
	fair_night)		IKON=" "	;;
	partlycloudy_day)	IKON=" "	;;
	partlycloudy_night)	IKON=" "	;;
	cloudy)			IKON=" "	;;
	fog)			IKON=" "	;;
	lightrainshowers_day)	IKON=" "	;;
	lightrainshowers_night)	IKON=" "	;;
	lightrain)		IKON=" "	;;
	rain)			IKON=" "	;;
	heavyrain)		IKON=" "	;;
	rainandthunder)		IKON=" "	;;
	heavyrainandthunder)	IKON=" "	;;
	sleet)			IKON=" "	;;
	lightsnow)		IKON=" "	;;
	snow)			IKON=" "	;;
	heavysnow)		IKON=" "	;;
	06d.png)	IKON=" "	;;
	06n.png)	IKON=" "	;;
	07d.png)	IKON=" "	;;
	07n.png)	IKON=" "	;;
	08d.png)	IKON=" "	;;
	08n.png)	IKON=" "	;;
	12.png)		IKON=" "	;;
	13.png)		IKON=" "	;;
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
	50.png)		IKON=" "	;;
esac

echo $IKON $WEATHER
