# $NetBSD: Makefile,v 1.30 2012/10/08 23:01:00 adam Exp $

.include "../../meta-pkgs/xfce4/Makefile.common"

XFCE4_VERSION=	2.1.0

DISTNAME=	xfce4-diskperf-plugin-${XFCE4_VERSION}
PKGREVISION=	14
CATEGORIES=	sysutils
MASTER_SITES=	http://goodies.xfce.org/releases/xfce4-diskperf-plugin/
COMMENT=	Xfce disk performance plugin

ONLY_FOR_PLATFORM+=	NetBSD-*-*
ONLY_FOR_PLATFORM+=	Linux-*-*

.include "../../x11/xfce4-panel/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
