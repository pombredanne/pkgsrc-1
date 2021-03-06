# $NetBSD$

PKG_OPTIONS_VAR=	PKG_OPTIONS.tmda
PKG_SUPPORTED_OPTIONS+=	ssl tls

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mssl) || !empty(PKG_OPTIONS:Mtls)
DEPENDS+=	${PYPKGPREFIX}-tlslite-[0-9]*:../../security/py-tlslite
.endif
