# $NetBSD: Makefile,v 1.42 2008/09/25 14:02:09 wiz Exp $

DISTNAME=		battalion
PKGNAME=		battalion-1.4
PKGREVISION=		7
CATEGORIES=		games x11
MASTER_SITES=		http://www.evl.uic.edu/aej/BATTALION/
DISTFILES=		battalionSource1.4.tar.Z battalionSUN4.tar.gz

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.evl.uic.edu/aej/AndyBattalion.html
COMMENT=		Virtual reality 3D GL game for X11

NOT_FOR_PLATFORM=	*-*-alpha	# relies on Mesa (gcc)

SETGIDGAME=		yes

WRKSRC=			${WRKDIR}/battalionSource
EXTRACT_ONLY=		battalionSource1.4.tar.Z
USE_TOOLS+=		gtar

.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "NetBSD" || ${OPSYS} == "DragonFly"
MAKE_ENV+=	LIBFLAGS=-lcompat
.endif

SPECIAL_PERMS+=		bin/battalion ${SETGID_GAMES_PERMS}
CONF_FILES_PERMS=	/dev/null /var/games/battalion_hiscore		\
			${GAMES_USER} ${GAMES_GROUP} ${GAMEDATAMODE}

INSTALLATION_DIRS=	bin ${PKGMANDIR}/man6

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/battalion ${DESTDIR}${PREFIX}/bin
	cd ${WRKDIR} && \
	    ${GZCAT} ${DISTDIR}/battalionSUN4.tar.gz | ${GTAR} xmf -
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/battalion/HELP
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/battalion/battalion.data/DATA
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/battalion/battalion.data/MUSIC
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/battalion/battalion.data/SOUNDS
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/battalion/battalion.data/TEXTURES
	${INSTALL_DATA} ${WRKDIR}/battalionSUN4/battalion.data/DATA/* ${DESTDIR}${PREFIX}/share/battalion/battalion.data/DATA
	${INSTALL_DATA} ${WRKDIR}/battalionSUN4/battalion.data/MUSIC/* ${DESTDIR}${PREFIX}/share/battalion/battalion.data/MUSIC
	${INSTALL_DATA} ${WRKDIR}/battalionSUN4/battalion.data/SOUNDS/* ${DESTDIR}${PREFIX}/share/battalion/battalion.data/SOUNDS
	${INSTALL_DATA} ${WRKDIR}/battalionSUN4/battalion.data/TEXTURES/* ${DESTDIR}${PREFIX}/share/battalion/battalion.data/TEXTURES
	${INSTALL_DATA} ${WRKDIR}/battalionSUN4/battalion.data/battalion.sho ${DESTDIR}${PREFIX}/share/battalion/battalion.data
	${INSTALL_MAN} ${WRKDIR}/battalionSUN4/battalion.man ${DESTDIR}${PREFIX}/${PKGMANDIR}/man6/battalion.6
	${INSTALL_DATA} ${WRKDIR}/battalionSUN4/HELP/* ${DESTDIR}${PREFIX}/share/battalion/HELP

pre-clean:
	@${RM} -rf ${WRKDIR}/battalionSUN4

.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../graphics/glu/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
