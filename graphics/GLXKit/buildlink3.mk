# $NetBSD: buildlink3.mk,v 1.4 2006/02/05 23:09:27 joerg Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
GLXKIT_BUILDLINK3_MK:=	${GLXKIT_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	GLXKit
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NGLXKit}
BUILDLINK_PACKAGES+=	GLXKit

.if !empty(GLXKIT_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.GLXKit+=	GLXKit>=0.3.1r2nb3
BUILDLINK_ABI_DEPENDS.GLXKit?=	GLXKit>=0.3.1r2nb9
BUILDLINK_PKGSRCDIR.GLXKit?=	../../graphics/GLXKit
.endif	# GLXKIT_BUILDLINK3_MK

.include "../../graphics/RenderKit/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
