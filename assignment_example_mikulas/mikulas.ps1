if ($args.Count -eq 0) {
    $szoveg=read-host "Kerlek add meg a korlevel mintaszoveget tartalmazo fajl nevet!"
    $adatbazis=read-host "Kerlek add meg a korlevel adatbazisat tartalmazo fajl nevet!"
} else {
    $szoveg=$args[0]
    if ($args.Count -eq 1) {
       $adatbazis=read-host "Kerlek add meg a korlevel adatbazisat tartalmazo fajl nevet!"
    } else {
        $adatbazis=$args[1]
    }
}

while ( ! (test-path "$szoveg" )) {
    echo "  HIBA! A korlevel mintaszovegenek megadott fajlod nem letezik."
    $szoveg=read-host "    Add meg ujra a fajl nevet!"
}

while ( ! (test-path "$adatbazis" )) {
    echo "  HIBA! A korlevel adatbazisakent megadott fajlod nem letezik."
    $adatbazis=read-host "    Add meg ujra a fajl nevet!"
}


foreach($line in Get-Content $adatbazis) {

  $s = $line -split ' '
  $nev = $s[0]
  $cim = $s[1]
  $datum = $s[2]
  (Get-Content $szoveg) | Foreach { $_ -replace '<nev>', $nev } | Foreach { $_ -replace '<cim>', $cim } | Foreach { $_ -replace '<datum>', $datum } 
    
}