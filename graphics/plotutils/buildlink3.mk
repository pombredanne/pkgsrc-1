# $NetBSD: buildlink3.mk,v 1.3 2004/03/18 09:12:12 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
PLOTUTILS_BUILDLINK3_MK:=	${PLOTUTILS_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	plotutils
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nplotutils}
BUILDLINK_PACKAGES+=	plotutils

.if !empty(PLOTUTILS_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.plotutils+=	plotutils>=2.4.1nb2
BUILDLINK_RECOMMENDED.plotutils+=	plotutils>=2.4.1nb3
BUILDLINK_PKGSRCDIR.plotutils?=	../../graphics/plotutils
.endif	# PLOTUTILS_BUILDLINK3_MK

.include "../../graphics/png/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
