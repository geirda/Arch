## dwm 6.2

This build of dwm uses the following two fonts:

* extra/ttf-hack
* aur/nerd-fonts-roboto-mono

Please note that Roboto Mono Nerd Font must be installed manually.

The following patches are installed:

* attachbelow
* autostart
* rotatestack
* ru_gaps
* status2d
* statuspadding
* swallow
* switchtotag
* titlecolor

### Installation (choose one of the methods):

#### From PKGBUILD:

	$ wget https://raw.githubusercontent.com/geirda/Arch/master/suckless/dwm/PKGBUILD
	$ makepkg -i

#### From precompiled binary:

	$ wget https://github.com/geirda/Arch/raw/master/suckless/dwm/dwm-geir-6.2-1-x86_64.pkg.tar.zst
	$ sudo pacman -U dwm-geir-6.2-1-x86_64.pkg.tar.zst

#### Manually (and for other distros than Arch-based ones):

	$ wget https://github.com/geirda/Arch/raw/master/suckless/dwm/dwm-geir.tar.xz
	$ tar xvf dwm-geir.tar.xz
	$ cd dwm-geir
	$ make install

![suckless](https://raw.githubusercontent.com/geirda/Arch/master/suckless/suckless.png)
