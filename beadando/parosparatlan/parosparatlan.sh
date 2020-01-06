#!/bin/sh

if [ $# -gt 0 ]; then
	filename=$1
else
	echo -n "Kerlek add meg a szamokat tartalmazo fajl nevet:"
	read filename
fi


until [ -f "$filename" ];do
	echo "    Ilyen fajl nincs."
	echo -n "    Add meg ujra fajl nevet!:"
	read filename
done

awk '{
    for (i=1;i<=NF;i++)
        {
		
		if (NR%2==0 && $i%2==0) 
				{
				parososszeg+=$i;
				}
				
		if (NR%2!=0 && $i%2!=0) 
				{
				paratlanosszeg+=$i;
				}		
		
		}
	} 
	END{
        print "Paros szamu sorokban levo paros szamok osszege:",parososszeg;
        print "Paratlan szamu sorokban levo paratlan szamok osszege:",paratlanosszeg;        
	}' $filename