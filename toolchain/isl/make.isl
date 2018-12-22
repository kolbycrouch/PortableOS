${FETCHCMD} http://isl.gforge.inria.fr/isl-0.20.tar.xz
export SRCDIR=isl-0.20
${RMCMD} ${TOPDIR}/tmpdir/${SRCDIR}
${MKDIRCMD} ${TOPDIR}/tmpdir/${SRCDIR}
${TARCMD} -vxf ${TOPDIR}/sources/${SRCDIR}.tar.* -C ${TOPDIR}/tmpdir/${SRCDIR}/
../patcher
cd ${TOPDIR}/tmpdir/${SRCDIR}/${SRCDIR}
${MKDIRCMD} build
cd build
../configure --prefix=${FINPREFIX} --host=$MACHARCH --target=$MACHARCH --build=$MACHARCH &&
${MKCMD} &&
${MKCMD} install 
