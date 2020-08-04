#!/bin/sh
[ -f ~/.cache/yr/data.txt ] && WEATHER="$(head -1 ~/.cache/yr/data.txt)C" || WEATHER="X°C"
CONDITIONS="$(head -1 ~/.cache/yr/data2.txt | cut -f1 -d .)"

case "$CONDITIONS" in
Skyet*)
	IKON=" "
	;;
Overskyet*)
	IKON=" "
	;;
Lettskyet*)
	IKON=" "
	;;
Delvis*)
	IKON=" "
	;;
Regn*)
	IKON=" "
	;;
Kraftig*regn*)
	IKON=" "
	;;
*regn*)
	IKON=" "
	;;
Snø*)
	IKON=" "
	;;
*snø*)
	IKON=" "
	;;
Sludd*)
	IKON=" "
	;;
*sludd*)
	IKON=" "
	;;
Hagl*)
	IKON=" "
	;;
*hagl*)
	IKON=" "
	;;
Torden*)
	IKON=" "
	;;
*torden*)
	IKON=" "
	;;
*)
	IKON=" "
	;;
esac

echo $IKON $WEATHER
