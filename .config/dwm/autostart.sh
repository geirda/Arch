#!/bin/sh
picom -b &
nitrogen --restore &
tilda -h -g $HOME/.config/tilda/config_0 &
$HOME/.config/dwm/statusbar.sh
