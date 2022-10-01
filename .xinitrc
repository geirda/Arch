#!/bin/sh

userresources=$HOME/.Xresources

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

setxkbmap -layout no-hyper -option "compose:menu"
numlockx
xsetroot -cursor_name left_ptr
xinput --set-prop 'Logitech USB-PS/2 Optical Mouse' 'libinput Accel Speed' 1
xrandr --auto --output HDMI-1 --right-of DP-1

start-pulseaudio-x11 &
#xiccd &

$HOME/.local/bin/nummie.sh &

exec dwm
