#!/usr/bin/zsh
[ -z "$1" ] && echo -n -e "\033]0;${TERM%%-*}\007" || echo -n -e "\033]0;$1\007" 
