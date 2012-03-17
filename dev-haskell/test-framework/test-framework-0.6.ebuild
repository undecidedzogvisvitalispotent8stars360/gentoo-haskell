# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header:  $

# ebuild generated by hackport 0.2.17

EAPI=4

CABAL_FEATURES="bin lib profile haddock hoogle hscolour"
inherit haskell-cabal

DESCRIPTION="Framework for running and organising tests, with HUnit and QuickCheck support"
HOMEPAGE="http://batterseapower.github.com/test-framework/"
SRC_URI="http://hackage.haskell.org/packages/archive/${PN}/${PV}/${P}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~ppc64 ~x86"
IUSE=""

RDEPEND=">=dev-haskell/ansi-terminal-0.4.0[profile?]
		>=dev-haskell/ansi-wl-pprint-0.5.1[profile?]
		>=dev-haskell/hostname-1.0[profile?]
		>=dev-haskell/regex-posix-0.72[profile?]
		>=dev-haskell/time-1.1.2[profile?]
		>=dev-haskell/xml-1.3.5[profile?]
		>=dev-lang/ghc-6.10.4"
DEPEND="${RDEPEND}
		>=dev-haskell/cabal-1.2.3"
