#!/bin/sh

userresources=$HOME/.Xresources

if [ -f "$userresources" ]; then
    xrdb -merge "$userresources"
fi

setxkbmap no
numlockx
xsetroot -cursor_name left_ptr
xinput --set-prop 'Logitech USB-PS/2 Optical Mouse' 'libinput Accel Speed' 1

start-pulseaudio-x11 &

exec dwm
