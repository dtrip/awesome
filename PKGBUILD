# $Id$
# Maintainer: Sébastien Luttringer
# Contributor: xduugu
# Contributor: Ronald van Haren <ronald.archlinux.org>
# Contributor: Vesa Kaihlavirta
# source=(git://github.com/dtrip/awesome.git)
source=('git+file:///usr/local/src/awesome#branch=master')
# src='/usr/local/src/awesome'
_pkgname=awesome
pkgname=${_pkgname}-dtrip
pkgver=3.5.2.r2247.g06cddf1
pkgver() {
  cd $srcdir/
  echo "git describe --long | sed 's/^v//;s/\\([^-]*-g\\)/r\\1/;s/-/./g'"
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
  'libxkbcommon-x11'
  'libxcursor'
  'libxdg-basedir'
  'lua'
  'lua-lgi'
  'pango'
  'startup-notification'
  'xcb-util-image'
  'xcb-util-cursor'
  'xcb-util-xrm'
  'xcb-util-keysyms'
  'xcb-util-wm'
  'xorg-xmessage'
)
makedepends=(
  'asciidoc'
  'cmake'
  'doxygen'
  'imagemagick'
  # 'ldoc'
  'xmlto'
  'lua-alt-getopt'
)
optdepends=(
  'rlwrap'
  'dex'
  'vicious'
)
provides=('notification-daemon' 'awesome')
conflicts=('awesome')
# md5sums=('f528f66ddcdb07f24e6f494837371702'
         # '0fdbeec43d211c6750041d7e37611a6a')

md5sums=(SKIP)
build() {
  cd  $srcdir/$pkgname
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
  cd $srcdir/$pkgname/build
  make install
  # gmake DESTDIR="$pkgdir" install
  # install desktop file so you can start awesome from your login manager
  install -dm755 /usr/local/share/xsessions
  install -m644 ../awesome.desktop "/usr/local/share/xsessions/awesome.desktop"
}

# vim:set ts=2 sw=2 et:
