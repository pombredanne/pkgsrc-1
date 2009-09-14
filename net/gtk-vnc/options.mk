# $NetBSD: options.mk,v 1.1.1.1 2009/04/06 10:17:32 wiz Exp $

PKG_OPTIONS_VAR=	PKG_OPTIONS.gtk-vnc
PKG_SUPPORTED_OPTIONS=	python plugin

.include "../../mk/bsd.options.mk"

PLIST_VARS=	python
.if !empty(PKG_OPTIONS:Mpython)
.include "../../lang/python/extension.mk"
.include "../../x11/py-gtk2/buildlink3.mk"
USE_TOOLS+=	gmake
PLIST.python=	yes
.else
CONFIGURE_ARGS+=	--with-python=no
.endif

PLIST_VARS+=	plugin
.if !empty(PKG_OPTIONS:Mplugin)
.include "../../devel/xulrunner/buildlink3.mk"
CONFIGURE_ARGS+=	--enable-plugin=yes
PLIST.plugin=	yes
.endif
