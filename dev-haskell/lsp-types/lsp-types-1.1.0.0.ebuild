# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999

CABAL_FEATURES="lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Haskell library for the Microsoft Language Server Protocol, data types"
HOMEPAGE="https://github.com/alanz/lsp"
SRC_URI="https://hackage.haskell.org/package/${P}/${P}.tar.gz"

LICENSE="MIT"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"

RDEPEND=">=dev-haskell/aeson-1.2.2.0:=[profile?]
	dev-haskell/data-default:=[profile?]
	>=dev-haskell/dependent-sum-0.6.2.2:=[profile?]
	dev-haskell/dependent-sum-template:=[profile?]
	dev-haskell/hashable:=[profile?]
	dev-haskell/hslogger:=[profile?]
	>=dev-haskell/lens-4.15.2:=[profile?] <dev-haskell/lens-5:=[profile?]
	dev-haskell/network-uri:=[profile?]
	>=dev-haskell/rope-utf16-splay-0.3.1.0:=[profile?]
	dev-haskell/scientific:=[profile?]
	dev-haskell/some:=[profile?]
	dev-haskell/temporary:=[profile?]
	dev-haskell/text:=[profile?]
	dev-haskell/unordered-containers:=[profile?]
	>=dev-lang/ghc-8.4.3:=
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
"
