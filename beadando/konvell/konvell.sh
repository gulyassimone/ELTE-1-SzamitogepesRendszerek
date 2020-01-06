#!/bin/sh

if [ $# -gt 0 ]; then
	filename=$1
else
	echo -n "Kerlek add meg a konvertalasra varo szamokat tartalmazo fajl nevet:"
	read filename
fi


until [ -f "$filename" ];do
	echo "    Ilyen fajl nincs."
	echo -n "    Add meg ujra fajl nevet!:"
	read filename
done


awk '{
	helyes="Helyesek a megadott adatok, konvertalhatoak a szamok.";
	
    for (i=3;i<=NF;i++)
        {
		
		szam=$i;
		
		while(szam>=1)
		{
			szammod=szam%10;
			
			if (szammod>=$1) 
				{
				helyes="Nem helyesek a megadott adatok!";
				}
			
			szam=szam-szammod;
			szam=szam/10;
				
		}
		
		


		}
		
	} 
	END{
        print helyes;       
	}' $filename