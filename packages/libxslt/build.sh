TERMUX_PKG_HOMEPAGE=http://xmlsoft.org/libxslt/
TERMUX_PKG_DESCRIPTION="XSLT processing library"
TERMUX_PKG_VERSION=1.1.29
TERMUX_PKG_REVISION=1
TERMUX_PKG_SRCURL=ftp://xmlsoft.org/libxslt/libxslt-${TERMUX_PKG_VERSION}.tar.gz
TERMUX_PKG_SHA256=b5976e3857837e7617b29f2249ebb5eeac34e249208d31f1fbf7a6ba7a4090ce
TERMUX_PKG_EXTRA_CONFIGURE_ARGS="--without-python"
TERMUX_PKG_DEPENDS="libxml2,libgcrypt"
TERMUX_PKG_DEVPACKAGE_DEPENDS="libxml2-dev"
TERMUX_PKG_INCLUDE_IN_DEVPACKAGE="bin/xslt-config lib/xsltConf.sh"
