# $NetBSD: Makefile,v 1.13 2009/02/09 23:25:45 joerg Exp $

DISTNAME=	lbrate-1.1
PKGREVISION=	1
CATEGORIES=	archivers
MASTER_SITES=	ftp://ftp.ibiblio.org/pub/Linux/utils/compress/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://rus.members.beeb.net/lbrate.html
COMMENT=	Extract/decompress CP/M LBR archives

PKG_INSTALLATION_TYPES=	overwrite pkgviews

MAKE_FLAGS+=	PREFIX=${PREFIX:Q}

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1 share/doc/lbrate

post-install:
.for f in COPYING ChangeLog README TODO
	${INSTALL_DATA} ${WRKSRC}/${f} ${DESTDIR}${PREFIX}/share/doc/lbrate
.endfor

.include "../../mk/bsd.pkg.mk"
