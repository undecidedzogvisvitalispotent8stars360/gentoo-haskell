# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.4.9999

GTK_MAJ_VER="2"

CABAL_FEATURES="lib profile" # virtual package
inherit haskell-cabal

DESCRIPTION="Embedded domain-specific language for declarative vector graphics"
HOMEPAGE="http://projects.haskell.org/diagrams"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="cairo gtk ps +svg"

RDEPEND=">=dev-haskell/diagrams-contrib-1.0:=[profile?] <dev-haskell/diagrams-contrib-1.1:=[profile?]
	>=dev-haskell/diagrams-core-1.0:=[profile?] <dev-haskell/diagrams-core-1.1:=[profile?]
	>=dev-haskell/diagrams-lib-1.0:=[profile?] <dev-haskell/diagrams-lib-1.1:=[profile?]
	>=dev-lang/ghc-6.10.4:=
	cairo? ( >=dev-haskell/diagrams-cairo-1.0:${GTK_MAJ_VER}=[profile?] <dev-haskell/diagrams-cairo-1.1:${GTK_MAJ_VER}=[profile?] )
	gtk? ( >=dev-haskell/diagrams-gtk-1.0:${GTK_MAJ_VER}=[profile?] <dev-haskell/diagrams-gtk-1.1:${GTK_MAJ_VER}=[profile?] )
	ps? ( >=dev-haskell/diagrams-postscript-1.0:=[profile?] <dev-haskell/diagrams-postscript-1.1:=[profile?] )
	svg? ( >=dev-haskell/diagrams-svg-1.0:=[profile?] <dev-haskell/diagrams-svg-1.1:=[profile?] )
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.10
"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag cairo cairo) \
		$(cabal_flag gtk gtk) \
		$(cabal_flag ps ps) \
		$(cabal_flag svg svg)
}
