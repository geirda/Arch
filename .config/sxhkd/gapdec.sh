#!/bin/sh
GAPVERDI=`bspc config -d focused window_gap`
GAPSUM=$((GAPVERDI - 1))
if [ $GAPSUM -lt 0  ]; then
  GAPSUM=0
fi
bspc config -d focused window_gap $GAPSUM
