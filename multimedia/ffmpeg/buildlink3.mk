# $NetBSD: buildlink3.mk,v 1.5 2006/02/22 10:30:18 abs Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
FFMPEG_BUILDLINK3_MK:=	${FFMPEG_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	ffmpeg
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nffmpeg}
BUILDLINK_PACKAGES+=	ffmpeg

.if !empty(FFMPEG_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.ffmpeg+=	ffmpeg>=0.4.9pre1
BUILDLINK_ABI_DEPENDS.ffmpeg?=	ffmpeg>=0.4.9pre1
BUILDLINK_PKGSRCDIR.ffmpeg?=	../../multimedia/ffmpeg
.endif	# FFMPEG_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
