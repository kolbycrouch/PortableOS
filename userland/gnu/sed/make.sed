${FETCHCMD} https://ftp.gnu.org/gnu/sed/sed-4.5.tar.xz
SRCDIR=sed-4.5
${RMCMD} $SRCDIR
${TARCMD} -vxf *.tar.xz
../patcher
cd $SRCDIR
${MKDIRCMD} build
cd build
FORCE_UNSAFE_CONFIGURE=1 ../configure --prefix=${FINPREFIX} --host=$MACHARCH \
	 --target=$MACHARCH --build=$MACHARCH &&
${MKCMD} &&
${MKCMD} install &&
${MKCMD} clean
