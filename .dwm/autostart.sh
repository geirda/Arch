#!/bin/sh
setxkbmap no
compton --config $HOME/.config/compton.conf -b &
feh --bg-scale $HOME/Bilder/wallpapers/Arch-linux-1920x1080.jpg &
guake &
/home/geir/.dwm/statusbar.sh
