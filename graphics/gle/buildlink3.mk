# $NetBSD: buildlink3.mk,v 1.4 2004/03/18 09:12:11 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
GLE_BUILDLINK3_MK:=	${GLE_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	gle
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ngle}
BUILDLINK_PACKAGES+=	gle

.if !empty(GLE_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.gle+=		gle>=3.0.3
BUILDLINK_RECOMMENDED.gle+=	gle>=3.1.0nb1
BUILDLINK_PKGSRCDIR.gle?=	../../graphics/gle
.endif	# GLE_BUILDLINK3_MK

.include "../../graphics/Mesa/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
