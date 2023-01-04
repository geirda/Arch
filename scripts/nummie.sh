#!/bin/sh

while true;
do
TIME=$(date '+%H')
case "$TIME" in
	00)	numlockx off	;;
	01)	numlockx off	;;
	02)	numlockx off	;;
	03)	numlockx off	;;
	04)	numlockx off	;;
	05)	numlockx off	;;
	06)	numlockx off	;;
	07)	numlockx off	;;
	08)	numlockx off	;;
	09)	numlockx on	;;
	22)	numlockx off	;;
	23)	numlockx off	;;
esac
sleep 1800;
done;
