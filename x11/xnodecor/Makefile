# $NetBSD: Makefile,v 1.12 2012/07/30 03:48:17 dholland Exp $

DISTNAME=	xnodecor
PKGNAME=	xnodecor-0.1
PKGREVISION=	1
CATEGORIES=	x11
MASTER_SITES=	ftp://ftp.42.org/pub/wmx/contrib/
EXTRACT_SUFX=	.c

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	# none
COMMENT=	Borderless or undecorated window support utility

USE_X11BASE=	yes
NO_CONFIGURE=	yes
WRKSRC=		${WRKDIR}

INSTALLATION_DIRS=	bin

post-extract:
	${CP} ${FILESDIR}/Makefile ${WRKSRC}

.include "../../x11/libX11/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
