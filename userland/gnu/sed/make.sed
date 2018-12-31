${FETCHCMD} https://ftp.gnu.org/gnu/sed/sed-4.5.tar.xz
export SRCDIR=sed-4.5
${RMCMD} ${TOPDIR}/tmpdir/${SRCDIR}
${MKDIRCMD} ${TOPDIR}/tmpdir/${SRCDIR}
${TARCMD} -vxf ${TOPDIR}/sources/${SRCDIR}.tar.* -C ${TOPDIR}/tmpdir/${SRCDIR}/
../patcher
cd ${TOPDIR}/tmpdir/${SRCDIR}/${SRCDIR}
${MKDIRCMD} build
cd build
FORCE_UNSAFE_CONFIGURE=1 ../configure --prefix=${FINPREFIX} --host=$MACHARCH \
	 --target=$MACHARCH --build=$MACHARCH &&
${MKCMD} &&
${MKCMD} install 
