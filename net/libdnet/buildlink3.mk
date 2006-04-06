# $NetBSD: buildlink3.mk,v 1.2 2006/02/05 23:10:26 joerg Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBDNET_BUILDLINK3_MK:=	${LIBDNET_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libdnet
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibdnet}
BUILDLINK_PACKAGES+=	libdnet

.if !empty(LIBDNET_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libdnet+=	libdnet>=1.7
BUILDLINK_ABI_DEPENDS.libdnet?=	libdnet>=1.10nb1
BUILDLINK_PKGSRCDIR.libdnet?=	../../net/libdnet
.endif	# LIBDNET_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
