#!/bin/sh
sxhkd &
picom --config $HOME/.config/picom.conf -b &
nitrogen --restore &
guake &
mouse.sh &
$HOME/.config/dwm/statusbar-color.sh
