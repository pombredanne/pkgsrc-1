# $NetBSD$

.if !defined(PANGO_HACKS_MK)
PANGO_HACKS_MK=	# defined

# Avoid high CPU usage caused by code generaton problems in Apple's G++.
# Please look here for details:
# https://bugzilla.gnome.org/show_bug.cgi?id=593240

.  if ${OPSYS} == "Darwin"
PKG_HACKS+=	darwin-pango-code-gen-bug
CFLAGS=		-pipe -O0 -g
.  endif
.endif
