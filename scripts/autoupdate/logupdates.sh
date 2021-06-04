#!/bin/sh
checkupdates | wc -l > /var/local/updates.txt
checkupdates-aur | wc -l >> /var/local/updates.txt
