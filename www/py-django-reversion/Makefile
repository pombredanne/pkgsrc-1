# $NetBSD: Makefile,v 1.2 2012/10/28 06:31:00 asau Exp $

DISTNAME=	django-reversion-1.6.4
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	www python
MASTER_SITES=	http://pypi.python.org/packages/source/d/django-reversion/

MAINTAINER=	adam@NetBSD.org
HOMEPAGE=	https://github.com/etianen/django-reversion/
COMMENT=	Version control facilities for Django
LICENSE=	modified-bsd

USE_LANGUAGES=		# empty
#EGG_NAME=		${DISTNAME:S/-/_/:S/-/_/}
PYDISTUTILSPKG=		yes

DEPENDS+=	${PYPKGPREFIX}-django-[0-9]*:../../www/py-django

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
