# $NetBSD: buildlink3.mk,v 1.3 2004/03/05 19:25:40 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
ASPELL_BUILDLINK3_MK:=	${ASPELL_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	aspell
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Naspell}
BUILDLINK_PACKAGES+=	aspell

.if !empty(ASPELL_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.aspell+=	aspell>=0.50.3nb2
BUILDLINK_RECOMMENDED.aspell+=	aspell>=0.50.5nb2
BUILDLINK_PKGSRCDIR.aspell?=	../../textproc/aspell
.endif	# ASPELL_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
