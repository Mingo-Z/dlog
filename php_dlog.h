/*
  +----------------------------------------------------------------------+
  | PHP Version 5                                                        |
  +----------------------------------------------------------------------+
  | Copyright (c) 1997-2013 The PHP Group                                |
  +----------------------------------------------------------------------+
  | This source file is subject to version 3.01 of the PHP license,      |
  | that is bundled with this package in the file LICENSE, and is        |
  | available through the world-wide-web at the following url:           |
  | http://www.php.net/license/3_01.txt                                  |
  | If you did not receive a copy of the PHP license and are unable to   |
  | obtain it through the world-wide-web, please send a note to          |
  | license@php.net so we can mail you a copy immediately.               |
  +----------------------------------------------------------------------+
  | Author: fengxu <fengxu0824@foxmail.com>                                                            |
  +----------------------------------------------------------------------+
*/

/* $Id$ */

#ifndef PHP_DLOG_H
#define PHP_DLOG_H

extern zend_module_entry dlog_module_entry;
#define phpext_dlog_ptr &dlog_module_entry

#ifdef PHP_WIN32
#	define PHP_DLOG_API __declspec(dllexport)
#elif defined(__GNUC__) && __GNUC__ >= 4
#	define PHP_DLOG_API __attribute__ ((visibility("default")))
#else
#	define PHP_DLOG_API
#endif

#ifdef ZTS
#include "TSRM.h"
#endif

PHP_MINIT_FUNCTION(dlog);
PHP_MSHUTDOWN_FUNCTION(dlog);
PHP_MINFO_FUNCTION(dlog);



ZEND_BEGIN_MODULE_GLOBALS(dlog)
	zend_bool enable;
ZEND_END_MODULE_GLOBALS(dlog)

PHP_GINIT_FUNCTION(dlog);

#ifdef ZTS
#define DLOG_G(v) TSRMG(dlog_globals_id, zend_dlog_globals *, v)
#else
#define DLOG_G(v) (dlog_globals.v)
#endif

typedef void (*error_callback)(int, const char*, const uint, const char*, va_list);
#define DLOG_LINE_LEN 256
#define DLOG_VERSION "1.0.0"

#endif	/* PHP_DLOG_H */


/*
 * Local variables:
 * tab-width: 4
 * c-basic-offset: 4
 * End:
 * vim600: noet sw=4 ts=4 fdm=marker
 * vim<600: noet sw=4 ts=4
 */
