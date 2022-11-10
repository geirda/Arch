#!/bin/sh

MOUNTED=$(df|grep Debian|cut -f6- -d "/")
[ -z $MOUNTED ] && sudo mount /home/geir/Debian || echo "" > /dev/null

sudo systemctl start postfix.service
sudo systemctl start smartd
