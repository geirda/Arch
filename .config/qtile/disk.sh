#!/bin/sh
DISKUSE="$(df -h | awk '/\/$/{ print $4 }')B"
echo "Free space: $DISKUSE"
