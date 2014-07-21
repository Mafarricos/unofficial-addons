################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="pyload"
PKG_VERSION="0.4.9"
PKG_REV="0"
PKG_ARCH="i386 x86_64"
PKG_LICENSE="OSS"
PKG_SITE="http://pyload.org/"
PKG_URL="http://download.pyload.org/$PKG_NAME-src-v$PKG_VERSION.zip"
PKG_SOURCE_DIR="$PKG_NAME"
PKG_DEPENDS_TARGET="toolchain Python pycurl pycrypto"
PKG_PRIORITY="optional"
PKG_SECTION="service/downloadmanager"
PKG_SHORTDESC="pyLoad is a fast, lightweight and full featured download manager"
PKG_LONGDESC="pyLoad is a fast, lightweight and full featured download manager for many One-Click-Hoster, container formats like DLC, video sites or just plain http/ftp links. It aims for low hardware requirements and platform independence to be runnable on all kind of systems (desktop pc, netbook, NAS, router)."

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="xbmc.service"
PKG_ADDON_REQUIRES="tools.unrar:0.0.0"

PKG_AUTORECONF="no"

PKG_MAINTAINER="unofficial.addon.pro"

make_target() {
  : # nop
}

makeinstall_target() {
  : # nop
}

addon() {
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/pylib
  cp -R $(get_build_dir pycurl)/.install_pkg/usr/lib/python*/site-packages/* $ADDON_BUILD/$PKG_ADDON_ID/pylib

  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/pyload
  cp -PR $PKG_BUILD/pyload/* $ADDON_BUILD/$PKG_ADDON_ID/pyload
}
