# $NetBSD: Makefile,v 1.15 2012/10/06 14:25:16 asau Exp $
#

DISTNAME=		scim-anthy-1.2.7
PKGREVISION=		14
CATEGORIES=		inputmethod
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE_JP:=scim-imengine/37309/}

MAINTAINER=		obache@NetBSD.org
HOMEPAGE=		http://scim-imengine.sourceforge.jp/
COMMENT=		SCIM IMEngine module for anthy
LICENSE=		gnu-gpl-v2

DEPENDS+=		kasumi>=0.6:../../inputmethod/kasumi

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		c c++
USE_LIBTOOL=		yes
USE_TOOLS+=		msgfmt pkg-config
GNU_CONFIGURE=		yes

USE_SCIM_GTKUTILS=	yes

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../inputmethod/anthy/buildlink3.mk"
.include "../../inputmethod/scim/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
