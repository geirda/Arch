#!/bin/sh
ICONPATH=/usr/share/icons/Paper/24x24

cat <<EOF | xmenu | sh &
IMG:$ICONPATH/apps/nautilus.png			File manager (PCManFM)		pcmanfm

IMG:$ICONPATH/apps/firefox.png			Web browser (firefox)		ffoxrun.sh
IMG:$ICONPATH/apps/brave.png			Web browser (brave)		brave
IMG:$ICONPATH/apps/libreoffice-writer.png	Word processor (lowriter)	lowriter
IMG:$ICONPATH/apps/gimp.png			Image manipulation (gimp)	gimp

IMG:$ICONPATH/apps/keepassxc.png		Password manager (KeePass)	keepassxc
IMG:$ICONPATH/apps/virtualbox.png		Virtualbox			virtualbox

IMG:$ICONPATH/apps/terminal.png			Terminal (alacritty)		alacritty
IMG:$ICONPATH/apps/terminal.png			Terminal (st)			st

IMG:$ICONPATH/categories/gtk-preferences.png	Appearance			lxappearance
IMG:$ICONPATH/apps/wallpaper.png		Wallpaper			nitrogen

IMG:$ICONPATH/actions/system-shutdown.png	Shutdown			poweroff
IMG:$ICONPATH/actions/system-reboot.png		Reboot				reboot
EOF

