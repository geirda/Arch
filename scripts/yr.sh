#!/bin/sh
# Script for å hente data fra yr.no
# Værvarsel fra Yr levert av Meteorologisk institutt og NRK

STI=~/.cache/yr

[ ! -d $STI ] && mkdir -p $STI

wget -q "https://api.met.no/weatherapi/locationforecast/2.0/compact?lat=59.92479&lon=10.81059&altitude=99" -O $STI/varsel.tmp
sleep 10
wget -q "https://api.met.no/weatherapi/locationforecast/2.0/compact?lat=59.94097&lon=10.94366&altitude=160" -O $STI/varsel2.tmp

[ -s $STI/varsel.tmp ] && cp $STI/varsel.tmp $STI/varsel.json
[ -s $STI/varsel2.tmp ] && cp $STI/varsel2.tmp $STI/varsel2.json

VARSEL=$(cat $STI/varsel.json|cut -f92 -d\")
VARSEL2=$(cat $STI/varsel2.json|cut -f92 -d\")
TEMPERATUR=$(cat $STI/varsel.json|cut -f53 -d \:|cut -f1 -d\,)
TEMPERATUR2=$(cat $STI/varsel2.json|cut -f53 -d \:|cut -f1 -d\,)

echo $TEMPERATUR > $STI/data.txt
echo $TEMPERATUR2 >> $STI/data.txt
echo $VARSEL > $STI/data2.txt
echo $VARSEL2 >> $STI/data2.txt
