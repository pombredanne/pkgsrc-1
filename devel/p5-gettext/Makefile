# $NetBSD: Makefile,v 1.25 2012/10/03 21:55:51 wiz Exp $

DISTNAME=	gettext-1.05
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	8
SVR4_PKGNAME=	p5gtx
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Locale/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/gettext/
COMMENT=	Perl5 module interface to C I18N functions
LICENSE=	${PERL5_LICENSE}

PKG_INSTALLATION_TYPES=	overwrite pkgviews

USE_LANGUAGES=		c
PERL5_PACKLIST=		auto/Locale/gettext/.packlist

SUBST_CLASSES+=		intlpath
SUBST_FILES.intlpath=	Makefile.PL
SUBST_SED.intlpath+=	-e 's,-lintl,-L${BUILDLINK_PREFIX.gettext}/lib -lintl,g'
SUBST_STAGE.intlpath=	pre-configure

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
