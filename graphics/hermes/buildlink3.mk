# $NetBSD: buildlink3.mk,v 1.2 2004/03/05 19:25:34 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
HERMES_BUILDLINK3_MK:=	${HERMES_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	Hermes
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NHermes}
BUILDLINK_PACKAGES+=	Hermes

.if !empty(HERMES_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.Hermes+=	Hermes>=1.3.2
BUILDLINK_RECOMMENDED.Hermes+=	Hermes>=1.3.3nb1
BUILDLINK_PKGSRCDIR.Hermes?=	../../graphics/hermes
.endif	# HERMES_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
