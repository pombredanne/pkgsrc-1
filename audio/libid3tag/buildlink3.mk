# $NetBSD: buildlink3.mk,v 1.3 2004/03/18 09:12:08 jlam Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBID3TAG_BUILDLINK3_MK:=	${LIBID3TAG_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libid3tag
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibid3tag}
BUILDLINK_PACKAGES+=	libid3tag

.if !empty(LIBID3TAG_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libid3tag+=	libid3tag>=0.15.0b
BUILDLINK_RECOMMENDED.libid3tag+=	libid3tag>=0.15.1bnb1
BUILDLINK_PKGSRCDIR.libid3tag?=	../../audio/libid3tag
.endif	# LIBID3TAG_BUILDLINK3_MK

.include "../../devel/zlib/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
