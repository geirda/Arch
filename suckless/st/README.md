# st 0.8.4

The following patches have been added:

* alphaFocusHighlight
* scrollback
* scrollback-mouse
* scrollback-mouse-altscreen

This build of st uses the following two fonts:

* aur/nerd-fonts-hack
* extra/ttf-hack

Please note that Hack Nerd Font must be installed manually. This is optional though, as st will use Hack Font as the fallback. To install Hack Nerd Font:

	$ yay -S nerd-fonts-hack

## Installation (choose one of the methods):

### From precompiled binary:

	$ wget https://github.com/geirda/Arch/raw/master/suckless/st/st-geir-0.8.4-1-x86_64.pkg.tar.zst
	$ sudo pacman -U st-geir-0.8.4-1-x86_64.pkg.tar.zst

### From PKGBUILD:

	$ wget https://raw.githubusercontent.com/geirda/Arch/master/suckless/st/PKGBUILD
	$ makepkg -i

### Manually (and for other distros than Arch-based ones):

	$ wget https://github.com/geirda/Arch/raw/master/suckless/st/st-geir.tar.xz
	$ tar xvf st-geir.tar.xz
	$ cd st-geir
	$ sudo make install

Install "Hack font" or "Hack Nerd Font". "Hack" is usually found in your distro's repo, on a Debian-based system do a:

	$ sudo apt install fonts-hack-ttf

Optional: Download Hack Nerd Font from https://www.nerdfonts.com/font-downloads and extract it to somewhere in your font path, like $HOME/.local/share/fonts/ or $HOME/.fonts/

![suckless](https://raw.githubusercontent.com/geirda/Arch/master/suckless/suckless.png)
