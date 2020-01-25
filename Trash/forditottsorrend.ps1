Készítsük el a 7. feladatban leírt scriptet úgy, hogy ha a számok sorrendje fordított, cserélje meg
azokat. Ne jelenítsen meg hibaüzeneteket azoknál a soroknál, melyekben nincs megfelelő
számúkarakter!
$ErrorActionPreference="SilentlyContinue"
$a = Read-Host -Prompt "Kérem a kisebb sorszámot"
$b = Read-Host -Prompt "Kérem a nagyobb sorszámot"
if ($a -gt $b)
{
 $c = $a
 $a = $b
 $b = $c
}
write-host A paraméterként kapott fájl sorainak $a-$b. karaktere:
foreach ($i in Get-Content $args[0])
{
 write-host $i.Substring($a-1,$b-$a+1)
}