${FETCHCMD} http://isl.gforge.inria.fr/isl-0.20.tar.xz
SRCDIR=isl-0.20
${RMCMD} $SRCDIR
${TARCMD} -vxf *.tar.xz
../patcher
cd $SRCDIR
${MKDIRCMD} build
cd build
../configure --prefix=${FINPREFIX} --host=$MACHARCH --target=$MACHARCH --build=$MACHARCH &&
${MKCMD} &&
${MKCMD} install 
