$NetBSD$

--- include/tbb/tbb_exception.h.orig	2013-02-21 17:10:46.000000000 +0000
+++ include/tbb/tbb_exception.h
@@ -30,6 +30,7 @@
 #define __TBB_exception_H
 
 #include "tbb_stddef.h"
+#include <new>
 #include <stdexcept>
 
 #if __TBB_EXCEPTIONS && !defined(__EXCEPTIONS) && !defined(_CPPUNWIND) && !defined(__SUNPRO_CC)
