#!/bin/sh

ido=$(date '+%H')
echo $ido

if [ $ido -ge 5 -a $ido -le 8 ];
then 
	echo "$(date '+%H:%M')Reggel"
else
	echo "$(date '+%H:%M') ESTE"
fi