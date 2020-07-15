#!/bin/sh
GAPVERDI=`bspc config -d focused window_gap`
GAPSUM=$((GAPVERDI + 1))
bspc config -d focused window_gap $GAPSUM
