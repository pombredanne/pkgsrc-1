# $NetBSD: buildlink3.mk,v 1.24 2004/10/03 00:13:31 tv Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
NCURSES_BUILDLINK3_MK:=	${NCURSES_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	ncurses
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nncurses}
BUILDLINK_PACKAGES+=	ncurses

.if !empty(NCURSES_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.ncurses+=	ncurses>=5.3nb1
BUILDLINK_ABI_DEPENDS.ncurses+=	ncurses>=5.4nb1
BUILDLINK_PKGSRCDIR.ncurses?=	../../devel/ncurses
.endif	# NCURSES_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
