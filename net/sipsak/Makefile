# $NetBSD: Makefile,v 1.9 2010/09/14 14:57:39 schwarz Exp $

DISTNAME=	sipsak-0.9.6-1
PKGNAME=	${DISTNAME:S/-1//}
PKGREVISION=	4
CATEGORIES=	net comms
MASTER_SITES=	http://download.berlios.de/sipsak/

MAINTAINER=	schwarz@NetBSD.org
HOMEPAGE=	http://sipsak.org/
COMMENT=	Sipsak is a command-line SIP testing utility
LICENSE=	gnu-gpl-v2

WRKSRC=		${WRKDIR}/${DISTNAME:S/-1//}

GNU_CONFIGURE=	YES
USE_TOOLS+=	gmake

.include "../../mk/bsd.prefs.mk"

.if ${PKGSRC_COMPILER} == "sunpro"
SUBST_CLASSES+=	inline
SUBST_STAGE.inline=	post-patch
SUBST_FILES.inline=	header_f.h
SUBST_SED.inline=	-e 's/inline //g'
.endif

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man1

.include "../../security/openssl/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
