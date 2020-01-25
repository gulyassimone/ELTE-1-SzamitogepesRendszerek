 
$korlevel=Read-host "K�rek egy k�rlevelet file nevet kiterjeszt�ssel egy�tt"


While (!(Test-Path .\$korlevel))
{
    $korlevel=Read-host "Nem tal�lom a file-t. G�pelje be �jra: "
}

$adatbazis=Read-host "k�rek egy adatb�zis file nevet kiterjeszt�ssel egy�tt"

While (!(Test-Path .\$adatbazis))
{
    $adatbazis=Read-host "Nem tal�lom a file-t. G�pelje be �jra: "
}

$text = Get-Content .\$korlevel -Raw -Encoding UTF8


$Importedcsv = Import-csv .\$adatbazis -Delimiter "," -Encoding UTF8 -Header 'nev', 'email', 'ido'


foreach ($i in $Importedcsv )
{
    write-host $text.Replace('<nev>', $i.nev).Replace('<email>', $i.email).Replace('<id�pont>', $i.ido)
}

 