# $NetBSD: buildlink3.mk,v 1.3 2004/11/30 02:30:59 minskim Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
SJ3_LIB_BUILDLINK3_MK:=	${SJ3_LIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	sj3-lib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nsj3-lib}
BUILDLINK_PACKAGES+=	sj3-lib

.if !empty(SJ3_LIB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.sj3-lib+=	sj3-lib>=2.0.1.20nb1
BUILDLINK_PKGSRCDIR.sj3-lib?=	../../inputmethod/sj3-lib
.endif	# SJ3_LIB_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
