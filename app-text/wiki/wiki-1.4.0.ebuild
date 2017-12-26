# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

GOLANG_PKG_IMPORTPATH="github.com/walle"

GOLANG_PKG_DEPENDENCIES=(
	"github.com/mattn/go-colorable:6fcc0c1"
	"github.com/mattn/go-isatty:6ca4dbf"
	)

inherit golang-single

DESCRIPTION="Command line tool to fetch summaries from MediaWiki"
HOMEPAGE="https://github.com/walle/wiki"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~arm ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_compile() {
	GOLANG_PKG_BUILDPATH="/cmd/wiki"
	golang-single_src_compile
}

src_install() {
	golang-single_src_install
	doman _doc/${PN}.1
}
