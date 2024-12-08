EAPI=8

SRC_URI="https://github.com/sxyazi/yazi/releases/download/v${PV}/yazi-x86_64-unknown-linux-gnu.zip"

LICENSE="MIT"
IUSE=""
HOMEPAGE="https://github.com/sxyazi/yazi"
SLOT="0"
KEYWORDS="~amd64"

QA_PREBUILT="
	/opt/${P}/ya
	/opt/${P}/yazi
"
src_unpack() {
	unpack ${A}
	mv "${WORKDIR}/yazi-x86_64-unknown-linux-gnu" "${WORKDIR}/${P}"
}

src_install() {
	insinto "/opt/${P}"
	doins -r ${WORKDIR}/${P}/*
	fperms 755 "/opt/${P}/yazi"
	fperms 755 "/opt/${P}/ya"
	dosym "/opt/${P}/yazi" "/usr/bin/yazi"
}
