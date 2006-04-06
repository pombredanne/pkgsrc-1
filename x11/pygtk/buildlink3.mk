# $NetBSD: buildlink3.mk,v 1.3 2006/02/05 23:11:41 joerg Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
PY_GTK_BUILDLINK3_MK:=	${PY_GTK_BUILDLINK3_MK}+

.include "../../lang/python/pyversion.mk"

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	pygtk
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Npygtk}
BUILDLINK_PACKAGES+=	pygtk

.if !empty(PY_GTK_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.pygtk+=	${PYPKGPREFIX}-gtk>=0.6.9nb4
BUILDLINK_ABI_DEPENDS.pygtk+=	${PYPKGPREFIX}-gtk>=0.6.11nb2
BUILDLINK_PKGSRCDIR.pygtk?=	../../x11/pygtk
.endif	# PY_GTK_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
