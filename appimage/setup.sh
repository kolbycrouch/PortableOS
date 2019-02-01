ln -sfn /tmp/.mount_sdk-linux-musl-a64* /tmp/.pkg-sdk-linux-musl-a64HLKeDE
cd $OWD
unset LD_LIBRARY_PATH
export PATH=/tmp/.pkg-sdk-linux-musl-a64HLKeDE/bin:/tmp/.pkg-sdk-linux-musl-a64HLKeDE/sbin:$PATH
export CC=/tmp/.pkg-sdk-linux-musl-a64HLKeDE/bin/gcc
export CXX=/tmp/.pkg-sdk-linux-musl-a64HLKeDE/bin/g++
export PKG_CONFIG_LIBDIR=/tmp/.pkg-sdk-linux-musl-a64HLKeDE/lib/pkgconfig
bash
