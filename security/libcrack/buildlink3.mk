# $NetBSD: buildlink3.mk,v 1.5 2004/03/05 19:25:39 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBCRACK_BUILDLINK3_MK:=	${LIBCRACK_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libcrack
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibcrack}
BUILDLINK_PACKAGES+=	libcrack

.if !empty(LIBCRACK_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libcrack+=	libcrack>=2.7
BUILDLINK_RECOMMENDED.libcrack+=	libcrack>=2.7nb1
BUILDLINK_PKGSRCDIR.libcrack?=	../../security/libcrack
.endif	# LIBCRACK_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
