TERMUX_PKG_HOMEPAGE=https://github.com/sharkdp/bat
TERMUX_PKG_DESCRIPTION="A cat(1) clone with wings"
TERMUX_PKG_LICENSE="Apache-2.0"
TERMUX_PKG_VERSION=0.15.2
TERMUX_PKG_SRCURL=https://github.com/sharkdp/bat/archive/v$TERMUX_PKG_VERSION.tar.gz
TERMUX_PKG_SHA256=7922e03c3b9da2abe76b294ac5cda4529bce8a1974ecf1c9228f334c82c132bc
# bat calls less with '--RAW-CONTROL-CHARS' which busybox less does not support:
TERMUX_PKG_DEPENDS="less, zlib"
TERMUX_PKG_BUILD_IN_SRC=true

termux_step_pre_configure() {
	CFLAGS="$CFLAGS $CPPFLAGS"

	# See https://github.com/nagisa/rust_libloading/issues/54
	export CC_x86_64_unknown_linux_gnu=gcc
	export CFLAGS_x86_64_unknown_linux_gnu=""
}

termux_step_post_make_install() {
	mkdir -p $TERMUX_PREFIX/share/man/man1
	cp $(find . -name bat.1) $TERMUX_PREFIX/share/man/man1/
}
