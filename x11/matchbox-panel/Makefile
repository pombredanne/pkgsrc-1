# $NetBSD: Makefile,v 1.25 2012/07/15 08:23:00 wiz Exp $
#

DISTNAME=		matchbox-panel-0.9.2
PKGREVISION=		8
CATEGORIES=		x11
MASTER_SITES=		http://matchbox-project.org/sources/matchbox-panel/0.9/
EXTRACT_SUFX=		.tar.bz2

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://matchbox-project.org/
COMMENT=		Panel for Matchbox

BROKEN_GETTEXT_DETECTION=	yes

USE_TOOLS+=		gmake msgfmt pkg-config
USE_PKGLOCALEDIR=	yes
GNU_CONFIGURE=		yes

CONFIGURE_ARGS+=	--enable-small-icons
CONFIGURE_ARGS+=	--enable-startup-notification
CONFIGURE_ARGS+=	--enable-nls

.include "../../mk/bsd.prefs.mk"

PLIST_VARS=		apm
.if ${OPSYS} == "DragonFly" || \
    ${OPSYS} == "NetBSD" && ${MACHINE_ARCH} == "x86_64"
# Nada
.else
PLIST.apm=		yes
.endif

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/libmatchbox/buildlink3.mk"
.include "../../sysutils/desktop-file-utils/desktopdb.mk"
.include "../../x11/libXft/buildlink3.mk"
.include "../../x11/startup-notification/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
