# $NetBSD$

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
P5_TIME_HIRES_BUILDLINK3_MK:=	${P5_TIME_HIRES_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	p5-Time-HiRes
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Np5-Time-HiRes}
BUILDLINK_PACKAGES+=	p5-Time-HiRes

.if !empty(P5_TIME_HIRES_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.p5-Time-HiRes+=	p5-Time-HiRes>=1.66nb1
BUILDLINK_PKGSRCDIR.p5-Time-HiRes?=	../../time/p5-Time-HiRes
.endif	# P5_TIME_HIRES_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
