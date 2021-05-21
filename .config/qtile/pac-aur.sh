#!/bin/sh
echo "Updates: $(checkupdates | wc -l)  AUR: $(checkupdates-aur | wc -l)"
