# $NetBSD: Makefile,v 1.23 2012/10/08 13:04:19 asau Exp $

VER=		3.0.2
DISTNAME=	ical-${VER}
EXTRACT_SUFFIX=	.tar.gz
#PKGREVISION=	1
CATEGORIES=	time
MASTER_SITES=	https://launchpad.net/ical-tcl/3.x/${VER}/+download/
FETCH_USING=	curl

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	https://launchpad.net/ical-tcl/
COMMENT=	Calendar application

PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_LANGUAGES=	c c++
GNU_CONFIGURE=	yes
CONFIGURE_ARGS+= --prefix=${PREFIX:Q} \
		--with-tclconfig=${BUILDLINK_PREFIX.tcl}/lib \
		--with-tclsh=${BUILDLINK_PREFIX.tcl}/bin/tclsh \
		--with-tkconfig=${BUILDLINK_PREFIX.tk}/lib

USE_TOOLS+=	gmake gsed

PLIST_SUBS+=	"PKGVERSION=${VER}"

post-configure:
	${TOUCH} ${WRKDIR}/${DISTNAME}/Makefile \
	         ${WRKDIR}/${DISTNAME}/calendar/Makefile \
	         ${WRKDIR}/${DISTNAME}/time/Makefile

.include "../../lang/tcl/buildlink3.mk"
.include "../../x11/tk/buildlink3.mk"
.include "../../mk/pthread.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
