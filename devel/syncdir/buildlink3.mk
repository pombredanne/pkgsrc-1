# $NetBSD: buildlink3.mk,v 1.2 2004/10/03 00:13:33 tv Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
SYNCDIR_BUILDLINK3_MK:=		${SYNCDIR_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=		syncdir
.endif

BUILDLINK_PACKAGES:=		${BUILDLINK_PACKAGES:Nsyncdir}
BUILDLINK_PACKAGES+=		syncdir

.if !empty(SYNCDIR_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.syncdir+=	syncdir>=1.0
BUILDLINK_ABI_DEPENDS.syncdir+=	syncdir>=1.0nb1
BUILDLINK_PKGSRCDIR.syncdir?=	../../devel/syncdir
.endif	# SYNCDIR_BUILDLINK3_MK

BUILDLINK_DEPTH:=     		${BUILDLINK_DEPTH:S/+$//}
