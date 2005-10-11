# $NetBSD$

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
LIBMEMCACHE_BUILDLINK3_MK:=	${LIBMEMCACHE_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	libmemcache
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nlibmemcache}
BUILDLINK_PACKAGES+=	libmemcache

.if !empty(LIBMEMCACHE_BUILDLINK3_MK:M+)
BUILDLINK_DEPENDS.libmemcache+=	libmemcache>=1.4.0beta5
BUILDLINK_PKGSRCDIR.libmemcache?=	../../devel/libmemcache
.endif	# LIBMEMCACHE_BUILDLINK3_MK

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
