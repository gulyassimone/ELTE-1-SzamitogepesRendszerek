if ($args.Count -eq 0) {
    $filename=read-host "Kerlek add meg a szoveget tartalmazo fajl nevet!"
}else{
    $filename=$args[0]
}

while ( ! (test-path "$filename" )) {
    echo "  HIBA! Ilyen fajl nincs."
    $filename=read-host "    Add meg ujra a fajl nevet!"
}



foreach($sor in Get-Content $filename){
    $array=$sor.Split(" ")

    foreach($szo in $array){
      $szo=$szo -replace '[^a-zA-Z]',''
      $szo=$szo.ToLower()
      Add-Content szavakkulonsorban $szo
    }

}


$maxertek=0
$maxszo=""

foreach($szo in Get-Content szavakkulonsorban){
$ujertek=0

    foreach($szom in Get-Content szavakkulonsorban){
        if($szom -match $szo){
            $ujertek=$ujertek+1
        }
    }


if ($ujertek -gt $maxertek){
    $maxszo=$szo
    $maxertek=$ujertek
}

}
Write-Host "A ""$maxszo"" szo szerepel leggyakrabban masik szoban reszszokent a parameterkent kapott szovegben."


Remove-Item szavakkulonsorban