# $NetBSD: buildlink3.mk,v 1.3 2006/02/05 23:10:45 joerg Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
MHASH_BUILDLINK3_MK:=	${MHASH_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	mhash
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nmhash}
BUILDLINK_PACKAGES+=	mhash

.if !empty(MHASH_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.mhash+=	mhash>=0.8.3
BUILDLINK_ABI_DEPENDS.mhash+=	mhash>=0.9.2nb1
BUILDLINK_PKGSRCDIR.mhash?=	../../security/mhash
.endif	# MHASH_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
