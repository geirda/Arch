[ -f ~/.Xresources ] && xrdb -merge ~/.Xresources
setxkbmap no
numlockx
xsetroot -cursor_name left_ptr
exec dwm
