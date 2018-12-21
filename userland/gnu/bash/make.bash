${FETCHCMD} https://ftp.gnu.org/gnu/bash/bash-4.4.18.tar.gz
SRCDIR=bash-4.4.18
${RMCMD} $SRCDIR
${TARCMD} -vxf *.tar.gz
../../patcher
cd $SRCDIR
${MKDIRCMD} build
cd build
FORCE_UNSAFE_CONFIGURE=1 ../configure --prefix=${FINPREFIX} --host=$MACHARCH \
	 --target=$MACHARCH --build=$MACHARCH --with-bash-malloc &&
${MKCMD} &&
${MKCMD} install &&
${MKCMD} clean
