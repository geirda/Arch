#!/bin/sh
sxhkd &
picom --config $HOME/.config/picom.conf -b &
nitrogen --restore &
guake &
$HOME/.config/dwm/statusbar-color.sh
