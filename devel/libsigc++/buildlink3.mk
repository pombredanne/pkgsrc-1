# $NetBSD: buildlink3.mk,v 1.8 2006/07/08 23:10:46 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBSIGCPP_BUILDLINK3_MK:=	${LIBSIGCPP_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libsigcpp
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibsigcpp}
BUILDLINK_PACKAGES+=	libsigcpp
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}libsigcpp

.if !empty(LIBSIGCPP_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libsigcpp+=	libsigc++>=2.0.3
BUILDLINK_ABI_DEPENDS.libsigcpp+=	libsigc++>=2.0.17nb1
BUILDLINK_PKGSRCDIR.libsigcpp?=		../../devel/libsigc++
.endif	# LIBSIGCPP_BUILDLINK3_MK

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
