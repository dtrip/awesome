# $Id$
# Maintainer: Sébastien Luttringer
# Contributor: xduugu
# Contributor: Ronald van Haren <ronald.archlinux.org>
# Contributor: Vesa Kaihlavirta
source=(git://github.com/dtrip/awesome.git)
src='/usr/local/src/awesome'
pkgname=awesome
pkgver() {
  cd '$pkgname'
  git describe --long | sed 's/^v//;s/\([^-]*-g\)/r\1/;s/-/./g'
}
pkgrel=1
pkgdesc='Highly configurable framework window manager'
arch=('i386' 'amd64' 'x86_64')
url='http://awesome.naquadah.org/'
license=('GPL2')
depends=(
  'cairo'
  'dbus-openrc'
  'gdk-pixbuf2'
  'imlib2'
  'libxcursor'
  'libxdg-basedir'
  'lua'
  'lua-lgi'
  'pango'
  'startup-notification'
  'xcb-util-image'
  'xcb-util-keysyms'
  'xcb-util-wm'
  'xorg-xmessage'
)
makedepends=(
  'asciidoc'
  'cmake'
  'doxygen'
  'imagemagick'
  'ldoc'
  'xmlto'
  'lua-alt-getopt'
)
optdepends=(
  'rlwrap'
  'dex'
  'vicious'
)
provides=('notification-daemon')
# md5sums=('f528f66ddcdb07f24e6f494837371702'
         # '0fdbeec43d211c6750041d7e37611a6a')

build() {
  cd  $pkgname-$pkgver
  mkdir build
  cd build
  cmake ..
  make
  # cd $pkgname-$pkgver
  # cmake \
    # -dcMAKE_BUILD_TYPE=RELEASE \
    # -DCMAKE_INSTALL_PREFIX=/usr \
    # -DSYSCONFDIR=/etc \
    # -DLUA_LIBRARY=/usr/lib/liblua.so.5.2
  # gmake
}

package() {
  cd $pkgname-$pkgver
  gmake DESTDIR="$pkgdir" install
  # install desktop file so you can start awesome from your login manager
  install -dm755 $pkgdir/usr/share/xsessions
  install -m644 ../awesome.desktop "$pkgdir/usr/share/xsessions/awesome.desktop"
}

# vim:set ts=2 sw=2 et:
