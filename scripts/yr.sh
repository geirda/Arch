#!/bin/sh
# Script for å hente data fra yr.no
# Værvarsel fra Yr levert av Meteorologisk institutt og NRK

STI=~/.cache/yr

[ ! -d $STI ] && mkdir -p $STI

wget https://www.yr.no/sted/Norge/Oslo/Oslo/Sofienberg_kirke/varsel.rss -O $STI/varsel.xml >/dev/null 2>&1
wget https://www.yr.no/sted/Norge/Akershus/L%C3%B8renskog/Rufsrud/varsel.rss -O $STI/varsel2.xml >/dev/null 2>&1

VARSEL=$(grep description $STI/varsel.xml|head -2|tail -1|cut -f2- -d \>|cut -f1 -d \<)
VARSEL2=$(grep description $STI/varsel2.xml|head -2|tail -1|cut -f2- -d \>|cut -f1 -d \<)
TEMPERATUR=$(echo $VARSEL|cut -f2- -d .|awk '{print $1}')
TEMPERATUR2=$(echo $VARSEL2|cut -f2- -d .|awk '{print $1}')

echo $TEMPERATUR > $STI/data.txt
echo $TEMPERATUR2 >> $STI/data.txt
echo $VARSEL > $STI/data2.txt
echo $VARSEL2 >> $STI/data2.txt

