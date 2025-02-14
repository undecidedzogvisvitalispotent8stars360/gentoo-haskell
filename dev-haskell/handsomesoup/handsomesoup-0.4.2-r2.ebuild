# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7

# ebuild generated by hackport 0.6.7.9999
#hackport: flags: buildexamples:examples,+network-uri

CABAL_FEATURES="lib profile haddock hoogle hscolour test-suite"
inherit haskell-cabal

MY_PN="HandsomeSoup"
MY_P="${MY_PN}-${PV}"

DESCRIPTION="Work with HTML more easily in HXT"
HOMEPAGE="https://github.com/egonSchiele/HandsomeSoup"
SRC_URI="https://hackage.haskell.org/package/${MY_P}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~amd64 ~x86"
IUSE="examples"

RDEPEND="dev-haskell/http:=[profile?]
	dev-haskell/hxt:=[profile?]
	dev-haskell/hxt-http:=[profile?]
	dev-haskell/mtl:=[profile?]
	dev-haskell/parsec:=[profile?]
	>=dev-lang/ghc-8.4.3:=
	>=dev-haskell/network-2.6:=[profile?]
	>=dev-haskell/network-uri-2.6:=[profile?]
"
DEPEND="${RDEPEND}
	>=dev-haskell/cabal-2.2.0.1
	test? ( >=dev-haskell/hspec-1.11 )
"

S="${WORKDIR}/${MY_P}"

src_configure() {
	haskell-cabal_src_configure \
		$(cabal_flag examples buildexamples) \
		--flag=network-uri
}
