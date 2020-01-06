if ($args.Count -eq 0) {
    $filename=read-host "Kerlek add meg a konvertalasra varo szamokat tartalmazo fajl nevet!"
}else{
    $filename=$args[0]
}

while ( ! (test-path "$filename" )) {
    echo "  HIBA! Ilyen fajl nincs."
    $filename=read-host "    Add meg ujra a fajl nevet!"
}

$helyes="Helyesek a megadott adatok, konvertalhatoak a szamok."

$sorind=1
foreach($sor in Get-Content $filename){
    $array=$sor.Split(" ")

    $szamind=1
    foreach($szam in $array){

    if ($szamind -eq 1){
        $szr=$szam
    }

    if ($szamind -gt 2){
        while($szam -ge 1){
			$szammod=$szam%10
			if ($szammod -ge $szr){
				$helyes="Nem helyesek a megadott adatok."
				}
			$szam=$szam-$szammod
			$szam=$szam/10		
		}
    }

    $szamind=$szamind+1

    }
    
    $sorind=$sorind+1
}

Write-Host $helyes