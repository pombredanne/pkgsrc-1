# $NetBSD: buildlink3.mk,v 1.28 2004/04/17 03:45:46 snj Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
MESALIB_BUILDLINK3_MK:=	${MESALIB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	MesaLib
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:NMesaLib}
BUILDLINK_PACKAGES+=	MesaLib

.if !empty(MESALIB_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.MesaLib+=	MesaLib>=3.4.2
BUILDLINK_RECOMMENDED.MesaLib+=	MesaLib>=6.0.1nb1
BUILDLINK_PKGSRCDIR.MesaLib?=	../../graphics/MesaLib

.if !defined(BUILDING_MESA)
BUILDLINK_CPPFLAGS.MesaLib=	-DGLX_GLXEXT_LEGACY
.endif

BUILDLINK_TRANSFORM+=		l:MesaGL:GL

.endif	# MESALIB_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
