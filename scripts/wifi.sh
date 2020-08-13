#!/bin/sh
STATUS="$(ip a|grep wlp|head -1|cut -f2 -d\<|cut -f1 -d ,)"
[ "$STATUS" = "NO-CARRIER" ] && nmcli connection up "Wireless connection 1"
