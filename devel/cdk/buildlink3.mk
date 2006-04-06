# $NetBSD: buildlink3.mk,v 1.2 2004/10/03 00:13:25 tv Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
CDK_BUILDLINK3_MK:=	${CDK_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	cdk
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ncdk}
BUILDLINK_PACKAGES+=	cdk

.if !empty(CDK_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.cdk+=		cdk>=4.9.9nb1
BUILDLINK_ABI_DEPENDS.cdk+=	cdk>=4.9.9nb2
BUILDLINK_PKGSRCDIR.cdk?=	../../devel/cdk
.endif	# CDK_BUILDLINK3_MK

.include "../../devel/ncurses/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
