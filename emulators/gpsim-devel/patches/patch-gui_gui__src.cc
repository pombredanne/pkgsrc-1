$NetBSD$

--- gui/gui_src.cc.orig	2005-08-31 14:46:39.000000000 +0000
+++ gui/gui_src.cc
@@ -22,6 +22,7 @@ Boston, MA 02111-1307, USA.  */
 #include <stdio.h>
 #include <stdlib.h>
 #include <errno.h>
+#include <typeinfo>
 
 #include "../config.h"
 #ifdef HAVE_GUI
