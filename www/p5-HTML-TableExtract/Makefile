# $NetBSD: Makefile,v 1.22 2012/10/03 21:58:46 wiz Exp $

DISTNAME=		HTML-TableExtract-2.11
PKGNAME=		p5-${DISTNAME}
PKGREVISION=		1
CATEGORIES=		www perl5
MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=HTML/}

MAINTAINER=		damon@NetBSD.org
HOMEPAGE=		http://search.cpan.org/dist/HTML-TableExtract/
COMMENT=		Perl5 module to simplify extracting HTML tables
LICENSE=		${PERL5_LICENSE}

DEPENDS+=		p5-HTML-Parser>=3.08:../../www/p5-HTML-Parser
DEPENDS+=		p5-HTML-Tree>=3.18:../../www/p5-HTML-Tree
DEPENDS+=		p5-HTML-Element-Extended>=1.16:../../www/p5-HTML-Element-Extended

USE_LANGUAGES=		# empty

PERL5_PACKLIST=		auto/HTML-TableExtract/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
