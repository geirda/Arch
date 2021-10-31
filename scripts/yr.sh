#!/bin/sh
# Script for å hente data fra yr.no
# Værvarsel fra Yr levert av Meteorologisk institutt og NRK

STI=~/.cache/yr

[ ! -d $STI ] && mkdir -p $STI

wget -q https://www.yr.no/sted/Norge/Oslo/Oslo/Ulven/varsel.rss -O $STI/varsel.tmp
sleep 30
wget -q https://www.yr.no/sted/Norge/Akershus/L%C3%B8renskog/Rufsrud/varsel.rss -O $STI/varsel2.tmp

[ -s $STI/varsel.tmp ] && cp $STI/varsel.tmp $STI/varsel.xml
[ -s $STI/varsel2.tmp ] && cp $STI/varsel2.tmp $STI/varsel2.xml

VARSEL=$(grep description $STI/varsel.xml|head -2|tail -1|cut -f2- -d \>|cut -f1 -d \<)
VARSEL2=$(grep description $STI/varsel2.xml|head -2|tail -1|cut -f2- -d \>|cut -f1 -d \<)
TEMPERATUR=$(echo $VARSEL|cut -f2- -d .|awk '{print $1}')
TEMPERATUR2=$(echo $VARSEL2|cut -f2- -d .|awk '{print $1}')

echo $TEMPERATUR > $STI/data.txt
echo $TEMPERATUR2 >> $STI/data.txt
echo $VARSEL > $STI/data2.txt
echo $VARSEL2 >> $STI/data2.txt
