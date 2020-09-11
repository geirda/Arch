#!/bin/bash

prog="Pcmanfm
Firefox
Brave
LOWriter
Gimp
KeepassXC
VirtualBox
Alacritty
St
Appearance
Wallpaper
Shutdown
Reboot"

cmd=$(dmenu -h 24 -l 15 -nb '#0a0a0a' -nf '#808080' -sb '#3a3436' -sf '#cac5b5' -p 'Launcher' <<< "$prog")

case ${cmd%% *} in
	Pcmanfm)	pcmanfm ;;
	Firefox)	firefox ;;
	Brave)		brave ;;
	LOWriter)	lowriter ;;
	Gimp)		gimp ;;
	KeepassXC)	keepassxc ;;
	VirtualBox)	virtualbox ;;
	Alacritty)	alacritty ;;
	St)		st ;;
	Appearance)	lxappearance ;;
	Wallpaper)	nitrogen ;;
	Shutdown)	poweroff ;;
	Reboot)		reboot ;;
	*)		exec "'${cmd}'" ;;
esac
