# ARCH will be auto-detected as the host if not specified
#ARCH=mips
ARCH=mipsel

# Pre-define path was /opt/rt-n56u_musl/toolchain-mipsel-musl
CC_BASE_PREFIX=$(dirname $(pwd))
TARGET_TOOLCHAIN=toolchain-3.4.x

GCC_BOOTSTRAP_CONFFLAGS="--enable-lto  --enable-target-optspace --disable-softfloat  --with-pic"
GCC_CONFFLAGS="--enable-lto  --enable-target-optspace --disable-libgomp --disable-nls --without-isl --without-cloog --enable-tls --enable-shared --enable-threads --disable-libssp --enable-__cxa_atexit  --disable-decimal-float --with-mips-plt --disable-softfloat  --with-pic"

MAKEFLAGS=-j4

# Enable this to build the bootstrap gcc (thrown away) without optimization, to reduce build time
GCC_STAGE1_NOOPT=1
