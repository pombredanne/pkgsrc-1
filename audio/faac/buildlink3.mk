# $NetBSD: buildlink3.mk,v 1.1.1.1 2004/05/16 01:51:21 xtraeme Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
FAAC_BUILDLINK3_MK:=	${FAAC_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	faac
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nfaac}
BUILDLINK_PACKAGES+=	faac

.if !empty(FAAC_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.faac+=	faac>=1.24
BUILDLINK_RECOMMENDED.faac+=	faac>=1.24nb1
BUILDLINK_PKGSRCDIR.faac?=	../../audio/faac
.endif	# FAAC_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
