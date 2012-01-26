# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.13

EAPI="3"

CABAL_FEATURES="lib profile haddock hscolour hoogle"
inherit eutils haskell-cabal

DESCRIPTION="NCurses bindings for Haskell"
HOMEPAGE="https://github.com/skogsbaer/hscurses"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND="dev-haskell/mtl
		>=dev-lang/ghc-6.12.1
		sys-libs/ncurses"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.6"

src_prepare() {
	epatch "${FILESDIR}"/${PN}-1.4.1.0-ghc-7.4.patch
	fperms u+x configure
}
