# $NetBSD: buildlink3.mk,v 1.2 2004/03/05 19:25:40 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBUNICODE_BUILDLINK3_MK:=	${LIBUNICODE_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libunicode
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibunicode}
BUILDLINK_PACKAGES+=	libunicode

.if !empty(LIBUNICODE_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libunicode+=		libunicode>=0.4
BUILDLINK_RECOMMENDED.libunicode+=	libunicode>=0.4nb1
BUILDLINK_PKGSRCDIR.libunicode?=	../../textproc/libunicode
.endif	# LIBUNICODE_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
