 
$korlevel=Read-host "Kérek egy körlevelet file nevet kiterjesztéssel együtt"


While (!(Test-Path .\$korlevel))
{
    $korlevel=Read-host "Nem találom a file-t. Gépelje be újra: "
}

$adatbazis=Read-host "kérek egy adatbázis file nevet kiterjesztéssel együtt"

While (!(Test-Path .\$adatbazis))
{
    $adatbazis=Read-host "Nem találom a file-t. Gépelje be újra: "
}

$text = Get-Content .\$korlevel -Raw -Encoding UTF8


$Importedcsv = Import-csv .\$adatbazis -Delimiter "," -Encoding UTF8 -Header 'nev', 'email', 'ido'


foreach ($i in $Importedcsv )
{
    write-host $text.Replace('<nev>', $i.nev).Replace('<email>', $i.email).Replace('<idöpont>', $i.ido)
}

 