# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

GOLANG_PKG_IMPORTPATH="github.com/cjbassi"
GOLANG_PKG_ARCHIVEPREFIX="v"
GOLANG_PKG_HAVE_TEST=1

SRC_URI="https://github.com/cjbassi/${PN}/archive/${PV}.tar.gz -> ${P}.tar.gz"

inherit golang-single

DESCRIPTION="A terminal based graphical activity monitor inspired by gtop"
HOMEPAGE="https://github.com/cjbassi/gotop"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS="amd64 x86 arm"
