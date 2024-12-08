EAPI=8

DESCRIPTION="Google's noto fonts cjk"

SRC_URI="https://github.com/notofonts/noto-cjk/releases/download/Serif${PV}/05_NotoSerifCJKOTF.zip"

S="${WORKDIR}/OTF"

SLOT="0"
KEYWORDS="~alpha amd64 arm arm64 ~loong x86"
IUSE=""

RESTRICT="binchecks strip"

DESTDIR="/usr/share/fonts/OTF"

src_install () {
	insinto ${DESTDIR}
	doins -r ${WORKDIR}/OTF/*
}
