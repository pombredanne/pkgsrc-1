# $NetBSD: buildlink3.mk,v 1.2 2004/10/03 00:18:25 tv Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
FCGI_BUILDLINK3_MK:=	${FCGI_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	fcgi
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nfcgi}
BUILDLINK_PACKAGES+=	fcgi

.if !empty(FCGI_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.fcgi+=	fcgi>=2.2.2nb1
BUILDLINK_ABI_DEPENDS.fcgi+=	fcgi>=2.4.0nb1
BUILDLINK_PKGSRCDIR.fcgi?=	../../www/fcgi
.endif	# FCGI_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
