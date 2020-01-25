Készítsünk scriptet, amelyik egy fájl páros és páratlan sorait külön-külön fájlokba másolja
(PárosSorok.txt és PáratlanSorok.txt)! Ellenőrizzük, hogy létezik-e a fájl!
if (Test-Path $args[0])
{
 if (Test-Path PárosSorok.txt)
 {
 Remove-Item PárosSorok.txt
 }
 if (Test-Path PáratlanSorok.txt)
 {
 Remove-Item PáratlanSorok.txt
 }
 New-Item -Name PárosSorok.txt -ItemType File
 New-Item -Name PáratlanSorok.txt -ItemType File
 [bool]$Páros=$true
 foreach ($i in Get-Content $args[0])
 {
 if ($Páros)
 {
 Add-Content PárosSorok.txt -Value $i
 }
 else
 {
 Add-Content PáratlanSorok.txt -Value $i
 }
 $Páros= -not $Páros
 }
}
else
{
 Write-Host "Nincs ilyen fájl!"
}