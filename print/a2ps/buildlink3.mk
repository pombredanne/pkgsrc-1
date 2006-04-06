# $NetBSD: buildlink3.mk,v 1.2 2006/02/05 23:10:35 joerg Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
A2PS_BUILDLINK3_MK:=	${A2PS_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	a2ps
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Na2ps}
BUILDLINK_PACKAGES+=	a2ps

.if !empty(A2PS_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.a2ps+=	a2ps>=4.13.0.2nb4
BUILDLINK_ABI_DEPENDS.a2ps?=	a2ps>=4.13.0.2nb10
BUILDLINK_PKGSRCDIR.a2ps?=	../../print/a2ps
.endif	# A2PS_BUILDLINK3_MK

.include "../../devel/gettext-lib/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
