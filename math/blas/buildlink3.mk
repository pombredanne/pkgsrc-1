# $NetBSD: buildlink3.mk,v 1.2 2004/03/05 19:25:37 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
BLAS_BUILDLINK3_MK:=	${BLAS_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	blas
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nblas}
BUILDLINK_PACKAGES+=	blas

.if !empty(BLAS_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.blas+=	blas>=1.0nb2
BUILDLINK_RECOMMENDED.blas+=	blas>=1.0nb3
BUILDLINK_PKGSRCDIR.blas?=	../../math/blas
.endif	# BLAS_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
