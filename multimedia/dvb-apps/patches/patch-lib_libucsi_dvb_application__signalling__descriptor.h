$NetBSD$

--- lib/libucsi/dvb/application_signalling_descriptor.h.orig	2011-06-28 05:50:24.000000000 +0000
+++ lib/libucsi/dvb/application_signalling_descriptor.h
@@ -66,7 +66,7 @@ static inline struct dvb_application_sig
 		return NULL;
 
 	while(pos < len) {
-		bswap16(buf+pos);
+		ubswap16(buf+pos);
 		pos+=3;
 	}
 
