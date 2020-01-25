Készítsünk scriptet, amelyik egy természetes számról eldönti, hogy prím-e!
[int]$szám=read-host -Prompt "Írj be egy természetes számot"
Write-Output $szám
if ($szám -lt 0)
{
 Write-Output "Nem természetes számot írtál be!"
}
elseif ($szám -eq 0)
{
 Write-Output "A szám nem prím."
}
elseif ($szám -eq 1)
{
 Write-Output "A szám sem nem prím, sem nem összetett."
}
elseif ($szám -eq 2)
{
 Write-Output "A szám prím."
}
else
{
 $i=2
 while ($i -lt $szám -and $szám % $i -ne 0)
 {
 $i++
 }
 if ($i -lt $szám)
 {
 Write-Output "A szám nem prím."
 }
 else
 {
 Write-Output "A szám prím."
 }
}