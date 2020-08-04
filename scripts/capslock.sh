#!/bin/sh
# Remap caps lock to escape
xmodmap -e 'keycode 66 = Escape'
xmodmap -e 'clear lock'
