# $NetBSD: buildlink3.mk,v 1.1.1.1 2004/05/16 01:12:15 xtraeme Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBJIT_BUILDLINK3_MK:=	${LIBJIT_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libjit
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibjit}
BUILDLINK_PACKAGES+=	libjit

.if !empty(LIBJIT_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libjit+=	libjit>=0.0.2
BUILDLINK_RECOMMENDED.libjit+=	libjit>=0.0.2nb1
BUILDLINK_PKGSRCDIR.libjit?=	../../devel/libjit
.endif	# LIBJIT_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
