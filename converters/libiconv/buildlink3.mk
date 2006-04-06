# $NetBSD: buildlink3.mk,v 1.21 2004/10/03 00:13:17 tv Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
ICONV_BUILDLINK3_MK:=	${ICONV_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	iconv
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Niconv}
BUILDLINK_PACKAGES+=	iconv

.if !empty(ICONV_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.iconv+=	libiconv>=1.9.1
BUILDLINK_ABI_DEPENDS.iconv+=	libiconv>=1.9.1nb4
BUILDLINK_PKGSRCDIR.iconv?=	../../converters/libiconv
.endif	# ICONV_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
