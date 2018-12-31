set -e
set -o pipefail

## Define functions for building each program.
##

build-bash () { cd bash && . make.bash && cd $TOPDIR/userland/gnu; }
build-coreutils () { cd coreutils && . make.coreutils && cd $TOPDIR/userland/gnu; }
build-findutils () { cd findutils  && . make.findutils && cd $TOPDIR/userland/gnu; }
build-gawk () { cd gawk && . make.gawk && cd $TOPDIR/userland/gnu; }
build-gzip () { cd gzip && . make.gzip && cd $TOPDIR/userland/gnu; }
build-nano () { cd nano && . make.nano && cd $TOPDIR/userland/gnu; }
build-sed () { cd sed && . make.sed && cd $TOPDIR/userland/gnu; }
build-tar () { cd tar && . make.tar && cd $TOPDIR/userland/gnu; }
build-util-linux () { cd util-linux && . make.util-linux && cd $TOPDIR/userland/gnu; }
build-xzutils () { cd xzutils && . make.xzutils && cd $TOPDIR/userland/gnu; }

## Build each program.
##

build-bash &&
build-coreutils &&
build-findutils &&
build-gawk &&
build-gzip &&
build-nano &&
build-sed &&
build-tar &&
build-util-linux &&
build-xzutils &&

${ECHOCMD} "Finished building GNU userland programs!"
