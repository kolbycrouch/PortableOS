${FETCHCMD} https://ftp.gnu.org/gnu/make/make-4.2.tar.gz
SRCDIR=make-4.2
${RMCMD} $SRCDIR
${TARCMD} -vxf *.tar.gz
../patcher
cd $SRCDIR
${MKDIRCMD} build
cd build
../configure --prefix=${FINPREFIX} --host=$MACHARCH --target=$MACHARCH --build=$MACHARCH &&
${MKCMD} &&
${MKCMD} install 
