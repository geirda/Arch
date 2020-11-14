#!/bin/sh
IP=$(ip addr | awk '/ global /{ print $2 }' | cut -f1 -d \/)
echo "IP: $IP"
