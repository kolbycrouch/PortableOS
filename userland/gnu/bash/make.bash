${FETCHCMD} https://ftp.gnu.org/gnu/bash/bash-4.4.18.tar.gz
export SRCDIR=bash-4.4.18
${RMCMD} ${TOPDIR}/tmpdir/${SRCDIR}
${MKDIRCMD} ${TOPDIR}/tmpdir/${SRCDIR}
${TARCMD} -vxf ${TOPDIR}/sources/${SRCDIR}.tar.* -C ${TOPDIR}/tmpdir/${SRCDIR}/
../patcher
cd ${TOPDIR}/tmpdir/${SRCDIR}/${SRCDIR}
${MKDIRCMD} build
cd build
FORCE_UNSAFE_CONFIGURE=1 ../configure --prefix=${FINPREFIX} --host=$MACHARCH \
	 --target=$MACHARCH --build=$MACHARCH --with-bash-malloc --enable-static-link &&
${MKCMD} &&
${MKCMD} install 
