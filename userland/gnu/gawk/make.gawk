${FETCHCMD} https://ftp.gnu.org/gnu/gawk/gawk-4.2.1.tar.xz
export SRCDIR=gawk-4.2.1
${RMCMD} ${TOPDIR}/tmpdir/${SRCDIR}
${MKDIRCMD} ${TOPDIR}/tmpdir/${SRCDIR}
${TARCMD} -vxf ${TOPDIR}/sources/${SRCDIR}.tar.* -C ${TOPDIR}/tmpdir/${SRCDIR}/
../patcher
cd ${TOPDIR}/tmpdir/${SRCDIR}/${SRCDIR}
${MKDIRCMD} build
cd build
LDFLAGS="-static" FORCE_UNSAFE_CONFIGURE=1 ../configure --prefix=${FINPREFIX} --libexecdir=${FINPREFIX}/lib --host=$MACHARCH \
	 --target=$MACHARCH --build=$MACHARCH --disable-extensions &&
${MKCMD} &&
${MKCMD} install 
