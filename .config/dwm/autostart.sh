#!/bin/sh
picom --config $HOME/.config/compton.conf -b &
nitrogen --restore &
tilda -h -g $HOME/.config/tilda/config_0 &
$HOME/.config/dwm/statusbar.sh
