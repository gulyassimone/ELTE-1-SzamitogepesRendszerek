if ($args.Count -eq 0) {
    $szamok=read-host "Kerlek add meg a szamokat tartalmazo fajl nevet!"
}else{
    $szamok=$args[0]
}

while ( ! (test-path "$szamok" )) {
    echo "  HIBA! Ilyen fajl nincs."
    $szamok=read-host "    Add meg ujra a fajl nevet!"
}

$parososszeg=0
$paratlanosszeg=0
$sorind=1

foreach($sor in Get-Content $szamok){
    $array=$sor.Split(" ")

    foreach($szam in $array){
        $indmod=$sorind%2
        $nummod=$szam%2

        if($indmod -eq 0 -AND $nummod -eq 0){
            $parososszeg=$parososszeg+$szam
        }

        if($indmod -eq 1 -AND $nummod -eq 1){
            $paratlanosszeg=$paratlanosszeg+$szam
        }
    }
    
    $sorind=$sorind+1
}

Write-Host Paros szamu sorokban levo paros szamok osszege: $parososszeg
Write-Host Paratlan szamu sorokban levo paratlan szamok osszege: $paratlanosszeg