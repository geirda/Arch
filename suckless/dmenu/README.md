# dmenu 5.0

This build of dmenu uses the following font:

* extra/ttf-hack

The following patch has been added:

* lineheight

## Installation (choose one of the methods):

### From PKGBUILD:

	$ wget https://raw.githubusercontent.com/geirda/Arch/master/suckless/dmenu/PKGBUILD
	$ makepkg -i

### From precompiled binary:

	$ wget https://github.com/geirda/Arch/raw/master/suckless/dmenu/dmenu-geir-5.0-1-x86_64.pkg.tar.zst
	$ sudo pacman -U dmenu-geir-5.0-1-x86_64.pkg.tar.zst

### Manually (and for other distros than Arch-based ones):

	$ wget https://github.com/geirda/Arch/raw/master/suckless/dmenu/dmenu-geir.tar.xz
	$ tar xvf dmenu-geir.tar.xz
	$ cd dmenu-geir
	$ make install

Install "Hack font". This font is usually found in your distro's repo, on a Debian-based system do a:

	$ sudo apt install fonts-hack-ttf

![suckless](https://raw.githubusercontent.com/geirda/Arch/master/suckless/suckless.png)
