# $NetBSD: buildlink3.mk,v 1.1 2004/04/11 18:21:33 xtraeme Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
OPENMOTIF_BUILDLINK3_MK:=	${OPENMOTIF_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	openmotif
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nopenmotif}
BUILDLINK_PACKAGES+=	openmotif

.if !empty(OPENMOTIF_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.openmotif+=	openmotif>=2.1.30
BUILDLINK_PKGSRCDIR.openmotif?=	../../x11/openmotif
.endif	# OPENMOTIF_BUILDLINK3_MK

.include "../../mk/x11.buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
