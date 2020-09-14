#!/bin/bash

prog="LOWriter
KeepassXC
VirtualBox
Appearance
Wallpaper
Shutdown
Reboot"

cmd=$(dmenu -h 24 -l 15 -nb '#0a0a0a' -nf '#808080' -sb '#3a3436' -sf '#cac5b5' -p 'Launcher' <<< "$prog")

case ${cmd%% *} in
	LOWriter)	lowriter ;;
	KeepassXC)	keepassxc ;;
	VirtualBox)	virtualbox ;;
	Appearance)	lxappearance ;;
	Wallpaper)	nitrogen ;;
	Shutdown)	poweroff ;;
	Reboot)		reboot ;;
	*)		exec "'${cmd}'" ;;
esac
