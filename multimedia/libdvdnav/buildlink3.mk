# $NetBSD: buildlink3.mk,v 1.1.1.1 2004/04/06 13:44:52 jmmv Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBDVDNAV_BUILDLINK3_MK:=	${LIBDVDNAV_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libdvdnav
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibdvdnav}
BUILDLINK_PACKAGES+=	libdvdnav

.if !empty(LIBDVDNAV_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libdvdnav+=	libdvdnav>=0.1.9
BUILDLINK_RECOMMENDED.libdvdnav+=	libdvdnav>=0.1.9nb1
BUILDLINK_PKGSRCDIR.libdvdnav?=	../../multimedia/libdvdnav
.endif	# LIBDVDNAV_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
