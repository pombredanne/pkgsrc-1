# $NetBSD: options.mk,v 1.2 2008/04/03 09:44:21 abs Exp $
#

PKG_OPTIONS_VAR=        PKG_OPTIONS.alpine
PKG_SUPPORTED_OPTIONS=  ldap pinepwd
PKG_SUGGESTED_OPTIONS=  pinepwd

.include "../../mk/bsd.options.mk"

# not tested
#.if !empty(PKG_OPTIONS:Mkerberos)
#CONFIGURE_ARGS+=       --with-krb5
#.include "../../mk/krb5.buildlink3.mk"
#.endif

.if !empty(PKG_OPTIONS:Mldap)
CONFIGURE_ARGS+=        --with-ldap
.include "../../databases/openldap-client/buildlink3.mk"
.endif

.if !empty(PKG_OPTIONS:Mpinepwd)
CONFIGURE_ARGS+= --with-passfile=.pinepwd
.endif
