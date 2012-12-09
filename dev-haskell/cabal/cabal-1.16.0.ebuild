# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

# ebuild generated by hackport 0.3.9999

CABAL_FEATURES="bootstrap lib profile test-suite"
inherit haskell-cabal eutils versionator

MY_PN="Cabal"
MY_PV=$(get_version_component_range '1-4')
MY_P="${MY_PN}-${PV}"

DESCRIPTION="A framework for packaging Haskell software"
HOMEPAGE="http://www.haskell.org/cabal/"
SRC_URI="mirror://hackage/packages/archive/${MY_PN}/${PV}/${MY_P}.tar.gz"

LICENSE="BSD"
SLOT="0/${PV}"
KEYWORDS="~alpha ~amd64 ~ia64 ~ppc ~ppc64 ~sparc ~x86 ~x86-fbsd ~x86-freebsd ~amd64-linux ~x86-linux ~ppc-macos ~x86-macos ~x86-solaris"
IUSE=""

RDEPEND=">=dev-lang/ghc-6.10.4:="
DEPEND="${RDEPEND}
		test? ( dev-haskell/extensible-exceptions
			dev-haskell/hunit
			>=dev-haskell/quickcheck-2.1.0.1
			dev-haskell/test-framework
			dev-haskell/test-framework-hunit
			dev-haskell/test-framework-quickcheck2
		)"

RESTRICT="test" # Fails own tests

RDEPEND="${RDEPEND}
		virtual/pkgconfig"
# cabal uses dev-util/pkgconfig using runtime to resolve C dependencies, so
# repoman's RDEPEND.suspect QA does not apply here

S="${WORKDIR}/${MY_PN}-${MY_PV}"

CABAL_CORE_LIB_GHC_PV="7.6.*"

src_configure() {
	if ! cabal-is-dummy-lib; then
		einfo "Bootstrapping Cabal..."
		$(ghc-getghc) ${HCFLAGS} -i -i. -i"${WORKDIR}/${FP_P}" -cpp --make Setup.hs \
			-o setup || die "compiling Setup.hs failed"
		cabal-configure
	fi
}

src_compile() {
	if ! cabal-is-dummy-lib; then
		cabal-build
	fi
}
