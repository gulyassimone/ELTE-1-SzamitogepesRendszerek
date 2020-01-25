#!/bin/bash

if [ $# -gt 0 ]; then
	filename=$1
else
	echo -n "Kerlek add meg a szoveget tartalmazo fajl nevet:"
	read filename
fi


until [ -f "$filename" ];do
	echo "    Ilyen fajl nincs."
	echo -n "    Add meg ujra fajl nevet!:"
	read filename
done


cat $filename |  tr " " "\n" | sed 's/[^a-zA-Z]//g' | tr '[:upper:]' '[:lower:]' > szavak

maxertek=0
maxszo=""

while read szo; do
ujertek=0

while read szom; do
if [[ "$szom" == *"$szo"* ]]; then
((ujertek++))
fi

done < szavak

if [ $ujertek -gt $maxertek ]; then
maxertek=$ujertek
maxszo=$szo
fi

done < szavak

echo "A(z) \""$maxszo"\" szo szerepel leggyakrabban masik szoban reszszokent a parameterkent kapott szovegben." 

rm szavak
