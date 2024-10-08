# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DIST_AUTHOR=DANKOGAI
DIST_VERSION=2.04
inherit perl-module

DESCRIPTION="This module provides libkakasi interface for Perl"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="amd64 ppc ppc64 sparc x86 ~amd64-linux ~x86-linux ~ppc-macos"

RDEPEND=">=app-i18n/kakasi-2.3.4"
DEPEND="${RDEPEND}"
BDEPEND="${RDEPEND}"

PATCHES=( "${FILESDIR}"/${PN}-2.04-makefile.patch )
