$NetBSD: patch-au,v 1.2 2010/09/21 15:57:30 taca Exp $

* Portability: include <bstring.h> if exists.

--- sql/log_event.h.orig	2010-02-04 11:39:50.000000000 +0000
+++ sql/log_event.h
@@ -28,6 +28,10 @@
 #ifndef _log_event_h
 #define _log_event_h
 
+#ifdef NEEDS_BSTRING_H
+#include <bstring.h> /* defines bzero() */
+#endif
+
 #if defined(USE_PRAGMA_INTERFACE) && defined(MYSQL_SERVER)
 #pragma interface			/* gcc class implementation */
 #endif
