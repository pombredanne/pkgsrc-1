# $NetBSD: buildlink3.mk,v 1.1 2004/04/12 20:50:27 snj Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
BEECRYPT_BUILDLINK3_MK:=	${BEECRYPT_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	beecrypt
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nbeecrypt}
BUILDLINK_PACKAGES+=	beecrypt

.if !empty(BEECRYPT_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.beecrypt+=	beecrypt>=3.0.0
BUILDLINK_RECOMMENDED.beecrypt+=	beecrypt>=3.0.0nb1
BUILDLINK_PKGSRCDIR.beecrypt?=	../../security/beecrypt
.endif	# BEECRYPT_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
