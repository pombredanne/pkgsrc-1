$NetBSD: patch-ay,v 1.2 2010/09/21 15:57:30 taca Exp $

* Portability: include <bstring.h> if exists.

--- strings/decimal.c.orig	2010-02-04 11:40:24.000000000 +0000
+++ strings/decimal.c
@@ -103,6 +103,9 @@
 #include <my_sys.h> /* for my_alloca */
 #include <m_string.h>
 #include <decimal.h>
+#ifdef NEEDS_BSTRING_H
+#include <bstring.h> /* defines bzero() */
+#endif
 
 /*
   Internally decimal numbers are stored base 10^9 (see DIG_BASE below)
