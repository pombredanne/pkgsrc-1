# $NetBSD: Makefile,v 1.16 2012/07/31 13:53:23 taca Exp $

DISTNAME=	ZenTest-4.8.3
CATEGORIES=	devel

MAINTAINER=	minskim@NetBSD.org
HOMEPAGE=	http://www.zenspider.com/ZSS/Products/ZenTest/
COMMENT=	Testing utilities for Ruby
LICENSE=	mit

CONFLICTS+=	ruby[1-9][0-9]-ZenTest-[0-9]* ZenTest-[0-9]*

RUBYGEMS_REQD=	1.8

.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
