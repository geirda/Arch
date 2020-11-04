#!/bin/sh
echo "Update script for dwm-geir\n"
wget -q https://raw.githubusercontent.com/geirda/Arch/master/suckless/dwm/README.md -O /tmp/dwm-geir

NYESTE=$(grep pacman /tmp/dwm-geir | cut -f5- -d " "| cut -f3-4 -d "-")
INSTALLERT=$(pacman -Qs dwm-geir|head -1|awk '{print $2}')

[ -z $INSTALLERT ] && echo "dwm-geir is not installed" || echo "Installed version: $INSTALLERT"

[ "$NYESTE" = "$INSTALLERT" ] && echo "You are on the latest version" && exit 0

echo -n "Latest version is $NYESTE. Do you want to install it? [y/N] "
read SVAR

case $SVAR in
	j|J|y|Y)
		wget -q https://github.com/geirda/Arch/raw/master/suckless/dwm/dwm-geir-${NYESTE}-x86_64.pkg.tar.zst -O /tmp/dwmgeir.pkg.tar.zst
		sudo pacman -U /tmp/dwmgeir.pkg.tar.zst
		;;
esac
