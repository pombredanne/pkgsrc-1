$NetBSD$

--- src/display/window_file_list.cc.orig	2013-05-03 22:49:37.000000000 +0000
+++ src/display/window_file_list.cc
@@ -36,6 +36,7 @@
 
 #include "config.h"
 
+#include <locale>
 #include <stdio.h>
 #include <torrent/path.h>
 #include <torrent/data/file.h>
