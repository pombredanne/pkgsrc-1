# $NetBSD: buildlink3.mk,v 1.2 2004/04/07 13:19:45 salo Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBOL_BUILDLINK3_MK:=	${LIBOL_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libol
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibol}
BUILDLINK_PACKAGES+=	libol

.if !empty(LIBOL_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libol+=	libol>=0.3.11
BUILDLINK_RECOMMENDED.libol+=	libol>=0.3.13nb1
BUILDLINK_PKGSRCDIR.libol?=	../../sysutils/libol
.endif	# LIBOL_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
