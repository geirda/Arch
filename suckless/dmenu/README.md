# dmenu 5.0

Patches included:

* lineheight

This build of dmenu uses the following font:

* extra/ttf-hack

## Installation (choose one of the methods):

### From precompiled binary:

	$ wget https://github.com/geirda/Arch/raw/master/suckless/dmenu/dmenu-geir-5.0-1-x86_64.pkg.tar.zst
	$ sudo pacman -U dmenu-geir-5.0-1-x86_64.pkg.tar.zst

### From PKGBUILD:

	$ wget https://raw.githubusercontent.com/geirda/Arch/master/suckless/dmenu/PKGBUILD
	$ makepkg -i

### Manually (and for other distros than Arch-based ones):

	$ wget https://github.com/geirda/Arch/raw/master/suckless/dmenu/dmenu-geir.tar.xz
	$ tar xvf dmenu-geir.tar.xz
	$ cd dmenu-geir
	$ sudo make install

Install "Hack font". This font is usually found in your distro's repo, on a Debian-based system do a:

	$ sudo apt install fonts-hack

![suckless](https://raw.githubusercontent.com/geirda/Arch/master/suckless/suckless.png)
