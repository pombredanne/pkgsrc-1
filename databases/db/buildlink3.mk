# $NetBSD: buildlink3.mk,v 1.24 2006/07/08 23:10:39 jlam Exp $

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH}+
DB_BUILDLINK3_MK:=	${DB_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	db2
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Ndb2}
BUILDLINK_PACKAGES+=	db2
BUILDLINK_ORDER:=	${BUILDLINK_ORDER} ${BUILDLINK_DEPTH}db2

.if !empty(DB_BUILDLINK3_MK:M+)
BUILDLINK_API_DEPENDS.db2+=		db>=2.7.3
BUILDLINK_ABI_DEPENDS.db2+=	db>=2.7.7nb2
BUILDLINK_PKGSRCDIR.db2?=	../../databases/db
BUILDLINK_INCDIRS.db2?=		include/db2
BUILDLINK_LDADD.db2=		-ldb2

.  include "../../mk/bsd.fast.prefs.mk"
.  if defined(USE_DB185) && !empty(USE_DB185:M[yY][eE][sS])
BUILDLINK_LIBS.db2=		${BUILDLINK_LDADD.db2}
BUILDLINK_TRANSFORM+=		l:db:db2
.  endif
.endif	# DB_BUILDLINK3_MK

BUILDLINK_DEPTH:=	${BUILDLINK_DEPTH:S/+$//}
