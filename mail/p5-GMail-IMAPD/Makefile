# $NetBSD: Makefile,v 1.7 2012/10/03 21:56:28 wiz Exp $

DISTNAME=	GMail-IMAPD-0.94
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	4
CATEGORIES=	mail perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=GMail/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/~krs/GMail-IMAPD-0.93/
COMMENT=	IMAP gateway for the GMail web service

PKG_INSTALLATION_TYPES=	overwrite pkgviews

DEPENDS+=	p5-Crypt-SSLeay>=0.51:../../security/p5-Crypt-SSLeay
DEPENDS+=	p5-libwww>=5.80:../../www/p5-libwww
DEPENDS+=	p5-Mail-Webmail-Gmail>=1.09:../../mail/p5-Mail-Webmail-Gmail

PERL5_PACKLIST=	auto/GMail/IMAPD/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
