# $NetBSD: buildlink3.mk,v 1.1 2005/04/09 18:38:10 wiz Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBPORTLIB_BUILDLINK3_MK:=	${LIBPORTLIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libportlib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibportlib}
BUILDLINK_PACKAGES+=	libportlib

.if !empty(LIBPORTLIB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libportlib+=	libportlib>=1.01
BUILDLINK_PKGSRCDIR.libportlib?=	../../devel/libportlib
BUILDLINK_DEPMETHOD.libportlib?=	build
.endif	# LIBPORTLIB_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
