# $NetBSD: Makefile,v 1.48 2012/10/08 23:02:41 adam Exp $
#

PKGNAME=	${DISTNAME:S/-/-demo-/}
PKGREVISION=	3
COMMENT=	Demo viewer and configuration tool for xscreensaver

CONFLICTS+=	xscreensaver<4.14 xscreensaver-gnome-[0-9]*

.include "../../x11/xscreensaver/Makefile.common"

USE_TOOLS+=		pkg-config

CONFIGURE_ARGS+=	--with-gtk=${BUILDLINK_PREFIX.gtk2}
CONFIGURE_ARGS+=	--with-xml=${BUILDLINK_PREFIX.libxml2}
CONFIGURE_ARGS+=	--with-configdir=${PREFIX}/libexec/xscreensaver/config

BUILD_DIRS=		${WRKSRC}/utils ${WRKSRC}/driver
INSTALL_DIRS=		${WRKSRC}/driver
INSTALL_TARGET=		install-gnome

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

post-install:
	${INSTALL_PROGRAM} ${WRKSRC}/driver/xscreensaver-demo \
	    ${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/driver/xscreensaver-demo.man \
	    ${DESTDIR}${PREFIX}/${PKGMANDIR}/man1/xscreensaver-demo.1

.include "../../devel/libglade/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../graphics/gdk-pixbuf2-xlib/buildlink3.mk"
.include "../../x11/xscreensaver/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
