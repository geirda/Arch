# Maintainer: Geir Damstuen
pkgname="st-geir"
pkgver=0.9
pkgrel=1
pkgdesc="A simple virtual terminal emulator for X"
url="https://github.com/geirda/st-geir.git"
arch=('i686' 'x86_64')
license=('MIT')
depends=('libx11' 'libxft' 'freetype2' 'ttf-hack' 'ttf-hack-nerd')
provides=(st)
conflicts=(st)
source=("git+$url")
md5sums=('SKIP')

prepare() {
	cd "$srcdir/$pkgname"
}

build() {
	cd "$srcdir/$pkgname"
	make
}

package() {
	cd "$srcdir/$pkgname"
	make PREFIX=/usr DESTDIR="$pkgdir" install
}
