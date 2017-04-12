#!/bin/bash
set -x

COLGOOD="#2E9D54"
COLBAD="#cc6666"
COLDEGRADED="#81a2be"

INTPRESENT="$(ip link | grep eth)"

if [[ -n "$INTPRESENT" ]]; then
    INT="$(ip link | grep eth[0-9] | awk -F: '{print $2}' | tr -d ' ')"
    CARRIER="$(cat /sys/class/net/$INT/carrier)"
    if [[ "$CARRIER" -eq 0 ]]; then
        RET=" down"
		RETCOLOR=$COLBAD
    else
        IP="$(ip addr show $INT | grep "inet " | awk '{print $2}')"
        RET=" Connected ($IP)"
		RETCOLOR=$COLGOOD
    fi 
else
    RET=" no interface"
    RETCOLOR=$COLBAD
fi

echo $RET
echo
echo $RETCOLOR
