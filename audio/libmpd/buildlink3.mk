# $NetBSD: buildlink3.mk,v 1.1.1.1 2005/11/22 19:26:08 wiz Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
LIBMPD_BUILDLINK3_MK:=	${LIBMPD_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libmpd
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibmpd}
BUILDLINK_PACKAGES+=	libmpd

.if !empty(LIBMPD_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libmpd+=	libmpd>=0.01
BUILDLINK_PKGSRCDIR.libmpd?=	../../audio/libmpd
.endif	# LIBMPD_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
