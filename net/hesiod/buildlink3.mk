# $NetBSD: buildlink3.mk,v 1.3 2004/04/25 00:34:21 wiz Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
HESIOD_BUILDLINK3_MK:=	${HESIOD_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	hesiod
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nhesiod}
BUILDLINK_PACKAGES+=	hesiod

.if !empty(HESIOD_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.hesiod+=	hesiod>=3.0.2
BUILDLINK_PKGSRCDIR.hesiod?=	../../net/hesiod
BUILDLINK_DEPMETHOD.hesiod?=	build
.endif	# HESIOD_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
