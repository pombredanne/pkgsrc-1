# $NetBSD: buildlink3.mk,v 1.3 2004/03/07 00:30:28 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBMODPLUG_BUILDLINK3_MK:=	${LIBMODPLUG_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libmodplug
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibmodplug}
BUILDLINK_PACKAGES+=	libmodplug

.if !empty(LIBMODPLUG_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libmodplug+=		libmodplug>=0.7
BUILDLINK_RECOMMENDED.libmodplug+=	libmodplug>=0.7nb1
BUILDLINK_PKGSRCDIR.libmodplug?=	../../audio/libmodplug
.endif	# LIBMODPLUG_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
