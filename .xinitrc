setxkbmap no
numlockx
xsetroot -cursor_name left_ptr
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources
exec dwm
