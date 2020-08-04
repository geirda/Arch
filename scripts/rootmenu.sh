#!/bin/sh

cat <<EOF | xmenu | sh &
File manager (PCManFM)		pcmanfm

Web browser (firefox)		firefox
Web browser (brave)		brave
Word processor (lowriter)	lowriter
Image manipulation (gimp)	gimp
Password manager (KeePass)	keepassxc

Virtualbox			virtualbox

Terminal (alacritty)		alacritty
Terminal (st)			st

Appearance			lxappearance
Wallpaper			nitrogen

Shutdown			poweroff
Reboot				reboot
EOF

