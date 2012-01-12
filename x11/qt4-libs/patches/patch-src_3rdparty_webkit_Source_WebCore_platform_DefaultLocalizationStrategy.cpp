$NetBSD$

Fix C++ error.

--- src/3rdparty/webkit/Source/WebCore/platform/DefaultLocalizationStrategy.cpp.orig	2012-01-12 19:51:48.000000000 +0100
+++ src/3rdparty/webkit/Source/WebCore/platform/DefaultLocalizationStrategy.cpp	2012-01-12 20:07:06.000000000 +0100
@@ -59,7 +59,7 @@
     return result.get();
 #elif PLATFORM(QT)
     va_list arguments;
-    va_start(arguments, format);
+    va_start(arguments, format.charactersWithNullTermination());
     QString result;
     result.vsprintf(format.latin1().data(), arguments);
     va_end(arguments);
