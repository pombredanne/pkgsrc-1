# $NetBSD: Makefile,v 1.6 2012/10/03 21:55:33 wiz Exp $

DISTNAME=	SVN-Class-0.17
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	1
CATEGORIES=	devel perl5 scm
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=SVN/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/SVN-Class/
COMMENT=	Manipulate Subversion workspaces with Perl objects
LICENSE=	${PERL5_LICENSE}

PKG_INSTALLATION_TYPES=	overwrite pkgviews

DEPENDS+=	p5-Data-Dump-[0-9]*:../../devel/p5-Data-Dump
DEPENDS+=	p5-IPC-Cmd>=0.40:../../devel/p5-IPC-Cmd
DEPENDS+=	p5-IPC-Run-[0-9]*:../../devel/p5-IPC-Run
DEPENDS+=	p5-Path-Class-[0-9]*:../../devel/p5-Path-Class
DEPENDS+=	p5-Path-Class-File-Stat-[0-9]*:../../devel/p5-Path-Class-File-Stat
DEPENDS+=	p5-Rose-Object-[0-9]*:../../devel/p5-Rose-Object
DEPENDS+=	p5-Rose-URI-[0-9]*:../../www/p5-Rose-URI
DEPENDS+=	subversion-base-[0-9]*:../../devel/subversion-base

PERL5_PACKLIST=		auto/SVN/Class/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
