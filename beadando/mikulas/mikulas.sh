#!/bin/sh

if [ $# -gt 1 ]; then
	filename1=$1
	filename2=$2
fi

if [ $# -eq 1 ]; then
	filename1=$1
	echo -n "Kerlek add meg az adatokat tartalmazo fajl nevet:"
	read filename2
fi

if [ $# -eq 0 ]; then
	echo -n "Kerlek add meg a korlevel szoveget tartalmazo fajl nevet:"
	read filename1	
	echo -n "Kerlek add meg az adatokat tartalmazo fajl nevet:"
	read filename2
fi

until [ -f "$filename1" ];do
	echo "  A(z) \"$filename1\" fajl nem letezik."
	echo -n "    Kerlek add meg a korlevel szoveget tartalmazo fajl nevet:"
	read filename1
done

until [ -f "$filename2" ];do
	echo "  A(z) \"$filename2\" fajl nem letezik."
	echo -n "    Kerlek add meg az adatokat tartalmazo fajl nevet:"
	read filename2
done

while read -r nev cim datum; do
  sed "s/<nev>/$nev/g;s/<cim>/$cim/g;s/<datum>/$datum/g" $filename1
done <$filename2



