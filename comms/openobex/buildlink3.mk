# $NetBSD: buildlink3.mk,v 1.2 2004/03/05 19:25:09 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
OPENOBEX_BUILDLINK3_MK:=	${OPENOBEX_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	openobex
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nopenobex}
BUILDLINK_PACKAGES+=	openobex

.if !empty(OPENOBEX_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.openobex+=	openobex>=1.0.1
BUILDLINK_RECOMMENDED.openobex+=	openobex>=1.0.1nb1
BUILDLINK_PKGSRCDIR.openobex?=	../../comms/openobex
.endif	# OPENOBEX_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
