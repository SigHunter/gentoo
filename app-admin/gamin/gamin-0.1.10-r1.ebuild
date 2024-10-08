# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

inherit multilib-build

DESCRIPTION="Meta package providing the File Alteration Monitor API & Server"
HOMEPAGE="https://www.gnome.org/~veillard/gamin/"

LICENSE="LGPL-2"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 ~hppa ~m68k ~mips ppc ppc64 ~riscv ~s390 sparc x86 ~amd64-linux ~x86-linux ~x64-solaris"

RDEPEND="
	!app-admin/fam
	>=dev-libs/libgamin-0.1.10-r4[${MULTILIB_USEDEP}]
"

PDEPEND=">=app-admin/gam-server-0.1.10"
