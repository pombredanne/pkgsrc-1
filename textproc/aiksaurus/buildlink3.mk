# $NetBSD: buildlink3.mk,v 1.3 2004/12/29 09:18:20 recht Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
AIKSAURUS_BUILDLINK3_MK:=	${AIKSAURUS_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	aiksaurus
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Naiksaurus}
BUILDLINK_PACKAGES+=	aiksaurus

.if !empty(AIKSAURUS_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.aiksaurus+=	aiksaurus>=1.2.1
BUILDLINK_PKGSRCDIR.aiksaurus?=	../../textproc/aiksaurus
.endif	# AIKSAURUS_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
