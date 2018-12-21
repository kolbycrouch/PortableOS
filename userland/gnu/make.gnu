export TCDIR="$(pwd)"

cd bash &&
. make.bash &&
cd $TCDIR &&

cd coreutils &&
. make.coreutils &&
cd $TCDIR &&

cd findutils  &&
. make.findutils &&
cd $TCDIR &&

cd gawk &&
. make.gawk &&
cd $TCDIR &&

cd gzip &&
. make.gzip &&
cd $TCDIR &&

cd nano &&
. make.nano &&
cd $TCDIR &&

cd sed &&
. make.sed &&
cd $TCDIR &&

cd tar &&
. make.tar &&
cd $TCDIR &&

cd util-linux &&
. make.util-linux &&
cd $TCDIR &&

cd xzutils &&
. make.xzutils &&
cd $TCDIR
