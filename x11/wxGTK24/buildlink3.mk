# $NetBSD: buildlink3.mk,v 1.3 2006/02/05 23:11:44 joerg Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
WXGTK24_BUILDLINK3_MK:=	${WXGTK24_BUILDLINK3_MK}+

.include "../../mk/bsd.prefs.mk"

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	wxGTK24
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NwxGTK24}
BUILDLINK_PACKAGES+=	wxGTK24

.if !empty(WXGTK24_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.wxGTK24+=	wxGTK24>=2.4.2
BUILDLINK_ABI_DEPENDS.wxGTK24?=	wxGTK24>=2.4.2nb9
BUILDLINK_PKGSRCDIR.wxGTK24?=	../../x11/wxGTK24
.endif	# WXGTK24_BUILDLINK3_MK

.include "../../devel/zlib/buildlink3.mk"
.include "../../graphics/MesaLib/buildlink3.mk"
.include "../../graphics/jpeg/buildlink3.mk"
.include "../../graphics/png/buildlink3.mk"
.include "../../graphics/tiff/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
