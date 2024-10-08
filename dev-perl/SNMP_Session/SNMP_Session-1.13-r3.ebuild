# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit perl-module

DESCRIPTION="A SNMP Perl Module"
SRC_URI="https://dev.gentoo.org/~dilfridge/distfiles/${P}.tar.gz"
HOMEPAGE="https://github.com/sleinen/snmp-session"

LICENSE="Artistic-2"
SLOT="0"
KEYWORDS="~alpha amd64 arm ~hppa ppc ppc64 sparc x86"

PATCHES=(
	"${FILESDIR}"/${P}-Socket6.patch
)

src_install() {
	perl-module_src_install
	docinto html
	dodoc index.html
}
