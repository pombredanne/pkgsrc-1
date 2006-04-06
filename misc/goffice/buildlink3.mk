# $NetBSD: buildlink3.mk,v 1.3 2006/02/05 23:10:09 joerg Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
GOFFICE_BUILDLINK3_MK:=	${GOFFICE_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	goffice
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ngoffice}
BUILDLINK_PACKAGES+=	goffice

.if !empty(GOFFICE_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.goffice+=	goffice>=0.1.2
BUILDLINK_ABI_DEPENDS.goffice?=	goffice>=0.2.0nb1
BUILDLINK_PKGSRCDIR.goffice?=	../../misc/goffice
.endif	# GOFFICE_BUILDLINK3_MK

.include "../../devel/GConf2/buildlink3.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../devel/libglade2/buildlink3.mk"
.include "../../devel/libgnomeui/buildlink3.mk"
.include "../../devel/libgsf/buildlink3.mk"
.include "../../devel/pango/buildlink3.mk"
.include "../../graphics/cairo/buildlink3.mk"
.include "../../graphics/libart2/buildlink3.mk"
.include "../../print/libgnomeprint/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
