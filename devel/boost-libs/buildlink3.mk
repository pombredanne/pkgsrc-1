# $NetBSD: buildlink3.mk,v 1.4 2005/08/12 20:58:45 jmmv Exp $

BUILDLINK_DEPTH:=		${BUILDLINK_DEPTH}+
BOOST_LIBS_BUILDLINK3_MK:=	${BOOST_LIBS_BUILDLINK3_MK}+

.if !empty(BUILDLINK_DEPTH:M+)
BUILDLINK_DEPENDS+=	boost-libs
.endif

BUILDLINK_PACKAGES:=	${BUILDLINK_PACKAGES:Nboost-libs}
BUILDLINK_PACKAGES+=	boost-libs

.if !empty(BOOST_LIBS_BUILDLINK3_MK:M+)
# Use a dependency pattern that guarantees the proper ABI.
BUILDLINK_API_DEPENDS.boost-libs+=		boost-libs-1.33.*
BUILDLINK_PKGSRCDIR.boost-libs?=	../../devel/boost-libs
.endif	# BOOST_LIBS_BUILDLINK3_MK

.include "../../devel/boost-headers/buildlink3.mk"

BUILDLINK_DEPTH:=     ${BUILDLINK_DEPTH:S/+$//}
