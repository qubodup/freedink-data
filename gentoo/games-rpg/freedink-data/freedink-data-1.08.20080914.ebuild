# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit games

DESCRIPTION="adventure and role-playing game (game data)"
HOMEPAGE="http://www.freedink.org/"
#SRC_URI="http://ftp.gnu.org/gnu/freedink/${P}.tar.bz2
#		 mirror://gnu/freedink/${P}.tar.bz2"
SRC_URI="http://www.freedink.org/snapshots/${P}.tar.gz"
LICENSE="ZLIB
CCPL-Attribution-ShareAlike-3.0
CCPL-Attribution-3.0
FreeArt
GPL-2
public-domain
"
SLOT="0"
IUSE=""
KEYWORDS="~x86"

src_compile() {
	emake || die "emake failed"
}

src_install() {
	make DESTDIR="${D}" install || die "make install failed"
	dodoc README.txt README-REPLACEMENTS.txt
	prepgamesdirs
}

