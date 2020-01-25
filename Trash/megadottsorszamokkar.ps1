 Készítsünk scriptet, amelyik egy fájl sorainak megadott sorszámok közötti karaktereit írja ki! A
fájlnevet paraméterként kapja, a sorszámokat futás közben olvassa be!
$a = Read-Host -Prompt "Kérem a kisebb sorszámot"
$b = Read-Host -Prompt "Kérem a nagyobb sorszámot"
write-host A paraméterként kapott fájl sorainak $a-$b. karaktere:
foreach ($i in Get-Content $args[0])
{
 write-host $i.Substring($a-1,$b-$a+1)
}
