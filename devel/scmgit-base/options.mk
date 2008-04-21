# $NetBSD$
#
PKG_OPTIONS_VAR=	PKG_OPTIONS.scmgit
PKG_SUPPORTED_OPTIONS=	scmgit-gui
PKG_SUGGESTED_OPTIONS=	scmgit-gui

.include "../../mk/bsd.options.mk"

PLIST_VARS+=		gui

.if !empty(PKG_OPTIONS:Mscmgit-gui)
PLIST.gui=		yes
USE_TOOLS+=		wish:run
CONFIGURE_ARGS+=	--with-tcltk=${WISH:Q}
.else
CONFIGURE_ARGS+=	--without-tcltk
.endif
