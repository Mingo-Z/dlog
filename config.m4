dnl $Id$
dnl config.m4 for extension dlog

dnl Comments in this file start with the string 'dnl'.
dnl Remove where necessary. This file will not work
dnl without editing.

dnl If your extension references something external, use with:

dnl PHP_ARG_WITH(dlog, for dlog support,
dnl Make sure that the comment is aligned:
dnl [  --with-dlog             Include dlog support])


PHP_ARG_ENABLE(dlog, whether to enable dlog support,
Make sure that the comment is aligned:
[  --enable-dlog           Enable dlog support])

if test "$PHP_DLOG" != "no"; then
  dnl Write more examples of tests here...

  dnl # --with-dlog -> check with-path
  dnl SEARCH_PATH="/usr/local /usr"     # you might want to change this
  dnl SEARCH_FOR="/include/dlog.h"  # you most likely want to change this
  dnl if test -r $PHP_DLOG/$SEARCH_FOR; then # path given as parameter
  dnl   DLOG_DIR=$PHP_DLOG
  dnl else # search default path list
  dnl   AC_MSG_CHECKING([for dlog files in default path])
  dnl   for i in $SEARCH_PATH ; do
  dnl     if test -r $i/$SEARCH_FOR; then
  dnl       DLOG_DIR=$i
  dnl       AC_MSG_RESULT(found in $i)
  dnl     fi
  dnl   done
  dnl fi
  dnl
  dnl if test -z "$DLOG_DIR"; then
  dnl   AC_MSG_RESULT([not found])
  dnl   AC_MSG_ERROR([Please reinstall the dlog distribution])
  dnl fi

  dnl # --with-dlog -> add include path
  dnl PHP_ADD_INCLUDE($DLOG_DIR/include)

  dnl # --with-dlog -> check for lib and symbol presence
  dnl LIBNAME=dlog # you may want to change this
  dnl LIBSYMBOL=dlog # you most likely want to change this 

  dnl PHP_CHECK_LIBRARY($LIBNAME,$LIBSYMBOL,
  dnl [
  dnl   PHP_ADD_LIBRARY_WITH_PATH($LIBNAME, $DLOG_DIR/lib, DLOG_SHARED_LIBADD)
  dnl   AC_DEFINE(HAVE_DLOGLIB,1,[ ])
  dnl ],[
  dnl   AC_MSG_ERROR([wrong dlog lib version or lib not found])
  dnl ],[
  dnl   -L$DLOG_DIR/lib -lm
  dnl ])
  dnl
  dnl PHP_SUBST(DLOG_SHARED_LIBADD)

  PHP_NEW_EXTENSION(dlog, dlog.c, $ext_shared)
fi
