# $NetBSD: Makefile,v 1.11 2011/04/22 13:44:50 obache Exp $

DISTNAME=	grep-2.4.2
PKGNAME=	ja-grep-2.4.2
PKGREVISION=	1
CATEGORIES=	japanese textproc
MASTER_SITES=	${MASTER_SITE_GNU:=grep/}

PATCH_SITES=	http://www.hinadori.atnifty.com/~wills/program/
PATCHFILES=	grep-2.4.2-mlb2.patch.gz
PATCH_DIST_STRIP=	-p1

CONFLICTS+=	grep-[0-9]*

MAINTAINER=	tech-pkg-ja@jp.NetBSD.org
HOMEPAGE=	http://www.gnu.org/software/grep/grep.html
COMMENT=	GNU grep + multi-byte extension

GNU_CONFIGURE=	yes
USE_PKGLOCALEDIR=	yes
USE_TOOLS+=	msgfmt
CONFIGURE_ARGS+=	--program-transform-name='s,^,j,'
TEST_TARGET=	check
INFO_FILES=	# PLIST

INSTALLATION_DIRS=	share/doc/ja-grep

INSTALL_MAKE_FLAGS+=	gnulocaledir=${DESTDIR}${PREFIX}/${PKGLOCALEDIR}/locale \
			datadir=${DESTDIR}${PREFIX}/share

post-install:
	${INSTALL_DATA} ${WRKSRC}/README.MB ${DESTDIR}${PREFIX}/share/doc/ja-grep

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
