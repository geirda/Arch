#!/bin/sh
sxhkd &
picom --config $HOME/.config/picom.conf -b &
play -q /home/geir/Dokumenter/KDE-lyder/KDE_Startup.wav &
nitrogen --restore &
guake &
$HOME/.config/dwm/statusbar-color.sh
