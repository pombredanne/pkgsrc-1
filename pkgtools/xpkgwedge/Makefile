# $NetBSD: Makefile,v 1.79 2010/06/06 03:45:17 dholland Exp $

DISTNAME=	xpkgwedge-1.17
CATEGORIES=	pkgtools devel x11
MASTER_SITES=	# empty
DISTFILES=	# empty

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	ftp://ftp.NetBSD.org/pub/NetBSD/packages/pkgsrc/doc/pkgsrc.html
COMMENT=	Allows X11 pkgs to be built and used outside of $${X11BASE}
LICENSE=	original-bsd

PKG_INSTALLATION_TYPES=	overwrite pkgviews

WRKSRC=		${WRKDIR}
USE_LANGUAGES=	# empty
NO_BUILD=	yes
NO_CONFIGURE=	yes

.include "../../mk/bsd.prefs.mk"

USE_TOOLS+=	imake:run xmkmf:run

.if ${LOCALBASE} == ${X11BASE}
PKG_SKIP_REASON+=	"xpkgwedge is not needed when X11BASE is LOCALBASE"
.endif

.if exists(${X11BASE}/bin/mkfontscale)
CONFLICTS+=	mkfontscale-[0-9]*
.endif

INSTALLATION_DIRS=	bin lib/X11/config

# FONT_PROGS are symlinked from ${X11BASE}/bin to ${PREFIX}/bin to allow
# ${PREFIX}/bin/${prog} to always work.
#
FONT_PROGS=		bdftopcf fstobdf mkfontdir mkfontscale

FILES_SUBST+=		VIEWBASE=${VIEWBASE}
FILES_SUBST+=		FONT_PROGS=${FONT_PROGS:Q}
FILES_SUBST+=		MAKE=${IMAKE_MAKE:Q}
USE_TOOLS+=		${IMAKE_TOOLS}

PLIST_VARS+=		Darwin IRIX IRIX5 IRIX6

.if !empty(MACHINE_PLATFORM:MDarwin-[0-8].*-*)
APPLY_DARWIN_PATCH=	${TRUE}
PLIST.Darwin=		yes
USE_TOOLS+=		patch
.else
APPLY_DARWIN_PATCH=	${FALSE}
.endif

.if ${OPSYS} == "IRIX"
PLIST.IRIX=		yes
USE_TOOLS+=		patch
. if !empty(OS_VERSION:M6*)
PLIST.IRIX6=		yes
. else
PLIST.IRIX5=		yes
. endif
.endif

.include "../../mk/x11.buildlink3.mk"

SUBST_CLASSES+=		paths
SUBST_FILES.paths=	${WRKDIR}/pkgxmkmf
SUBST_SED.paths+=	-e 's,@PREFIX@,${PREFIX},g'
SUBST_SED.paths+=	-e 's,@X11BASE@,${X11BASE},g'
SUBST_SED.paths+=	-e 's,@VIEWBASE@,${VIEWBASE},g'
SUBST_SED.paths+=	-e 's,@MAKE@,${IMAKE_MAKE},g'
SUBST_STAGE.paths=	post-patch

post-extract:
	@${CP} ${FILESDIR}/xpkgwedge.def ${WRKSRC}
	@${CP} ${FILESDIR}/pkgxmkmf.in ${WRKDIR}/pkgxmkmf

.if defined(X11_TYPE) && !empty(X11_TYPE:Mxorg)
X11TYPEFLAGS?=		-L${X11BASE}/lib ${COMPILER_RPATH_FLAG}${X11BASE}/lib
SUBST_CLASSES+=		fix
SUBST_STAGE.fix=	post-patch
SUBST_FILES.fix=	xpkgwedge.def
SUBST_SED.fix=		-e "s|@X11TYPEFLAGS@|${X11TYPEFLAGS}|"
.else # X11_TYPE == xorg.
SUBST_CLASSES+=		foo
SUBST_STAGE.foo=	post-patch
SUBST_FILES.foo=	xpkgwedge.def
SUBST_SED.foo=		-e "s|\#define ExtraLoadFlags @X11TYPEFLAGS@||"
.endif # X11_TYPE == native || X11_TYPE == monolithic.

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/lib/X11/config
	${INSTALL_DATA} ${WRKSRC}/xpkgwedge.def ${DESTDIR}${PREFIX}/lib/X11/config
	${INSTALL_SCRIPT} ${WRKSRC}/pkgxmkmf ${DESTDIR}${PREFIX}/bin/pkgxmkmf

.include "../../mk/bsd.pkg.mk"
