# $NetBSD: buildlink3.mk,v 1.5 2006/04/12 10:27:41 rillig Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
GTK2+EXTRA_BUILDLINK3_MK:=	${GTK2+EXTRA_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	gtk2+extra
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ngtk2+extra}
BUILDLINK_PACKAGES+=	gtk2+extra

.if !empty(GTK2+EXTRA_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.gtk2+extra+=	gtk2+extra>=2.1.1
BUILDLINK_ABI_DEPENDS.gtk2+extra?=	gtk2+extra>=2.1.1nb3
BUILDLINK_PKGSRCDIR.gtk2+extra?=	../../x11/gtk2+extra
.endif	# GTK2+EXTRA_BUILDLINK3_MK

.include "../../x11/gtk2/buildlink3.mk"

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH:S/+$//}
