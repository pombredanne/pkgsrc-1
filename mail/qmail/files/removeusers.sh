#!/bin/sh
#
# $NetBSD$

USER_CMD=@USER_CMD@
GROUP_CMD=@GROUP_CMD@

USERS="alias qmaill qmaild qmailp qmailq qmailr qmails"
GROUPS="qmail nofiles"

for i in $USERS; do ${USER_CMD} del $i 2> /dev/null > /dev/null; done
for i in $GROUPS; do ${GROUP_CMD} del $i 2> /dev/null > /dev/null; done

echo "qmail users and groups removed."
