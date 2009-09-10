# $NetBSD$

BUILDLINK_TREE+=	buzztard

.if !defined(BUZZTARD_BUILDLINK3_MK)
BUZZTARD_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.buzztard+=	buzztard>=0.5.0
BUILDLINK_PKGSRCDIR.buzztard?=	../../nih/buzztard

.endif	# BUZZTARD_BUILDLINK3_MK

BUILDLINK_TREE+=	-buzztard
