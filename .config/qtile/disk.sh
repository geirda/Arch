#!/bin/sh
DISKUSE="$(df -h | awk '/sda1/{ print $4 }')B"
echo "Free space: $DISKUSE"
