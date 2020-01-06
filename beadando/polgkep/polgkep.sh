#!/bin/bash


if [ $# -gt 0 ]; then
	filename=$1
else
	echo -n "Kerlek add meg az osszegyujtott szavazatokat tartalmazo fajl nevet:"
	read filename
fi


until [ -f "$filename" ];do
	echo "    Ilyen fajl nincs."
	echo -n "    Add meg ujra fajl nevet!:"
	read filename
done


while read line; do
	cat "$filename" | grep "$line"
done < polgarmesterek.txt > szurtnev

while read line; do
	cat szurtnev | grep "$line"
done < kepviselok.txt > szurtnevteljes

while read line; do

	ervenytelen="i"

	while read szline; do

		if [ "$line" == "$szline" ]; then
			ervenytelen="h"
		fi

	done < szurtnevteljes
	
	if [ "$ervenytelen" == "i" ]; then
		echo $line
	fi

done < "$filename" > ervenytelen.txt

echo "Ervenyes, polgarmesterre leadott szavazatok szama:"
while read pnev; do
db=0
	awk -v pnev="$pnev" -v db="$db" -F, '{
	
	if ($1==pnev)
	{
		db=db+1;
	}
	}END{
	print pnev ": " db " db";
	}' szurtnevteljes

done < polgarmesterek.txt


echo "Ervenyes, kepviselore leadott szavazatok szama:"
while read knev; do
db=0
	awk -v knev="$knev" -v db="$db" -F, '{
	
	if ($2==knev)
	{
		db=db+1;
	}
	}END{
	print knev ": " db " db";
	}' szurtnevteljes

done < kepviselok.txt




rm szurtnevteljes
rm szurtnev

