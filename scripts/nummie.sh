#!/bin/sh

while true;
do
TIME=$(date '+%H')
case "$TIME" in
	09)	numlockx on	;;
	22)	numlockx off	;;
esac
sleep 1800;
done;
