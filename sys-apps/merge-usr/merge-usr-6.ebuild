# Copyright 2022-2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..13} )
inherit python-single-r1

DESCRIPTION="Script to migrate from split-usr to merged-usr"
HOMEPAGE="https://github.com/floppym/merge-usr"
SRC_URI="https://github.com/floppym/merge-usr/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-2+"
SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 hppa ~loong ~m68k ~mips ppc ppc64 ~riscv ~s390 sparc x86"

REQUIRED_USE="${PYTHON_REQUIRED_USE}"
BDEPEND="${PYTHON_DEPS}"
RDEPEND="${PYTHON_DEPS}"

src_install() {
	python_doscript merge-usr
}
