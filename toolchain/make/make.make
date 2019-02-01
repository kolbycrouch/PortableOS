${FETCHCMD} https://ftp.gnu.org/gnu/make/make-4.2.tar.gz
export SRCDIR=make-4.2
${RMCMD} ${TOPDIR}/tmpdir/${SRCDIR}
${MKDIRCMD} ${TOPDIR}/tmpdir/${SRCDIR}
${TARCMD} -vxf ${TOPDIR}/sources/${SRCDIR}.tar.* -C ${TOPDIR}/tmpdir/${SRCDIR}/
../patcher
cd ${TOPDIR}/tmpdir/${SRCDIR}/${SRCDIR}
${MKDIRCMD} build
cd build

if [ "$STATICTOOLCHAIN" == "yes" ]; then
	STATIC="LDFLAGS=-static"
fi

../configure $STATIC --prefix=${FINPREFIX} --host=$MACHARCH --target=$MACHARCH --build=$MACHARCH &&
${MKCMD} &&
${MKCMD} install 
