# $NetBSD: buildlink3.mk,v 1.1.1.1 2005/10/15 16:36:57 wiz Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
RENDEREXT_BUILDLINK3_MK:=	${RENDEREXT_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	renderext
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nrenderext}
BUILDLINK_PACKAGES+=	renderext

.if !empty(RENDEREXT_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.renderext+=	renderext>=0.9
BUILDLINK_PKGSRCDIR.renderext?=	../../x11/renderext
BUILDLINK_DEPMETHOD.renderext?=	build
.endif	# RENDEREXT_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
