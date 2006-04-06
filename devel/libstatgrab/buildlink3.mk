# $NetBSD: buildlink3.mk,v 1.4 2004/10/30 00:30:29 xtraeme Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBSTATGRAB_BUILDLINK3_MK:=	${LIBSTATGRAB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libstatgrab
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibstatgrab}
BUILDLINK_PACKAGES+=	libstatgrab

.if !empty(LIBSTATGRAB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.libstatgrab+=	libstatgrab>=0.10
BUILDLINK_ABI_DEPENDS.libstatgrab+=	libstatgrab>=0.10.3nb1
BUILDLINK_PKGSRCDIR.libstatgrab?=	../../devel/libstatgrab
.endif	# LIBSTATGRAB_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
