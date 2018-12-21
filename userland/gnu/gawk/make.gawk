${FETCHCMD} https://ftp.gnu.org/gnu/gawk/gawk-4.2.1.tar.xz
SRCDIR=gawk-4.2.1
${RMCMD} $SRCDIR
${TARCMD} -vxf *.tar.xz
../../patcher
cd $SRCDIR
${MKDIRCMD} build
cd build
FORCE_UNSAFE_CONFIGURE=1 ../configure --prefix=${FINPREFIX} --host=$MACHARCH \
	 --target=$MACHARCH --build=$MACHARCH &&
${MKCMD} &&
${MKCMD} install &&
${MKCMD} clean
