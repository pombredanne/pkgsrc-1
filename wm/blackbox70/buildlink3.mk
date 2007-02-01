# $NetBSD: buildlink3.mk,v 1.1 2006/08/20 23:07:17 jschauma Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
BLACKBOX70_BUILDLINK3_MK:=	${BLACKBOX70_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	blackbox70
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nblackbox70}
BUILDLINK_PACKAGES+=	blackbox70
BUILDLINK_ORDER:=       ${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}blackbox70

.if !empty(BLACKBOX70_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.blackbox70+=	blackbox70>=0.70.0
BUILDLINK_ABI_DEPENDS.blackbox70+=	blackbox70>=0.70.0
BUILDLINK_PKGSRCDIR.blackbox70?=	../../wm/blackbox70
.endif	# BLACKBOX70_BUILDLINK3_MK

.include "../../x11/libX11/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
