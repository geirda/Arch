# dwm 6.2

Patches included:

* attachbelow
* autostart
* gridmode
* pertag
* rotatestack
* ru_gaps
* status2d
* statuspadding
* swallow
* switchtotag
* titlecolor

This build of dwm uses the following two fonts:

* extra/ttf-hack
* aur/nerd-fonts-roboto-mono

Please note that RobotoMono Nerd Font must be installed manually, e.g.:

	$ yay -S nerd-fonts-roboto-mono

## Installation (choose one of the methods):

### From precompiled binary:

	$ wget https://github.com/geirda/Arch/raw/master/suckless/dwm/dwm-geir-6.2-2-x86_64.pkg.tar.zst
	$ sudo pacman -U dwm-geir-6.2-2-x86_64.pkg.tar.zst

### From PKGBUILD:

	$ wget https://raw.githubusercontent.com/geirda/Arch/master/suckless/dwm/PKGBUILD
	$ makepkg -i

### Manually (and for other distros than Arch-based ones):

	$ wget https://github.com/geirda/Arch/raw/master/suckless/dwm/dwm-geir.tar.xz
	$ tar xvf dwm-geir.tar.xz
	$ cd dwm-geir
	$ sudo make install

Install "Hack font" and "RobotoMono Nerd Font". "Hack" is usually found in your distro's repo, on a Debian-based system do a:

	$ sudo apt install fonts-hack

Download RobotoMono Nerd Font from https://www.nerdfonts.com/font-downloads and extract it to somewhere in your font path, like $HOME/.local/share/fonts/ or $HOME/.fonts/

![suckless](https://raw.githubusercontent.com/geirda/Arch/master/suckless/suckless.png)
