# Copyright 1999-2018 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

# ebuild generated by hackport 0.5.6.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

DESCRIPTION="Generate Haskell bindings for GObject Introspection capable libraries"
HOMEPAGE="https://github.com/haskell-gi/haskell-gi"
SRC_URI="mirror://hackage/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="LGPL-2.1"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE=""

RESTRICT=test # Ambiguous interface for ‘Text.Regex.TDFA’: regex-tdfa-1.2.2 regex-tdfa-rc-1.1.8.3
RDEPEND=">=dev-haskell/attoparsec-0.13:=[profile?] <dev-haskell/attoparsec-0.14:=[profile?]
	>=dev-haskell/cabal-1.24:=[profile?]
	>=dev-haskell/haskell-gi-base-0.21:=[profile?] <dev-haskell/haskell-gi-base-0.22:=[profile?]
	>=dev-haskell/mtl-2.2:=[profile?]
	dev-haskell/pretty-show:=[profile?]
	>=dev-haskell/regex-tdfa-1.2:=[profile?]
	dev-haskell/safe:=[profile?]
	>=dev-haskell/semigroups-0.18:=[profile?] <dev-haskell/semigroups-0.19:=[profile?]
	>=dev-haskell/text-1.0:=[profile?]
	dev-haskell/xdg-basedir:=[profile?]
	>=dev-haskell/xml-conduit-1.3.0:=[profile?]
	>=dev-lang/ghc-7.8.2:=
	dev-libs/glib:2
	>=dev-libs/gobject-introspection-1.0
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-1.18.1.3
	virtual/pkgconfig
	test? ( >=dev-haskell/doctest-0.8 )
"
