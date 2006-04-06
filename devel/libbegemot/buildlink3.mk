# $NetBSD: buildlink3.mk,v 1.1 2005/04/05 11:13:12 wiz Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBBEGEMOT_BUILDLINK3_MK:=	${LIBBEGEMOT_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libbegemot
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibbegemot}
BUILDLINK_PACKAGES+=	libbegemot

.if !empty(LIBBEGEMOT_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libbegemot+=	libbegemot>=1.9nb1
BUILDLINK_PKGSRCDIR.libbegemot?=	../../devel/libbegemot
.endif	# LIBBEGEMOT_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
