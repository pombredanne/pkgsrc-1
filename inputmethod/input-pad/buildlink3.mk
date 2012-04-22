# $NetBSD: buildlink3.mk,v 1.9 2012/03/03 00:12:08 wiz Exp $
#

BUILDLINK_TREE+=	input-pad

.if !defined(INPUT_PAD_BUILDLINK3_MK)
INPUT_PAD_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.input-pad+=	input-pad>=1.0.1
BUILDLINK_PKGSRCDIR.input-pad?=	../../inputmethod/input-pad

.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../devel/glib2/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../x11/libX11/buildlink3.mk"
.include "../../x11/libxkbfile/buildlink3.mk"
.include "../../x11/libxklavier/buildlink3.mk"
.endif	# INPUT_PAD_BUILDLINK3_MK

BUILDLINK_TREE+=	-input-pad
