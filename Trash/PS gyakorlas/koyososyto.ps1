Készítsünk scriptet, amelyik meghatározza két egész szám legnagyobb közös osztóját!
[int]$a=read-host -Prompt "Kérem az első számot"
[int]$b=read-host -Prompt "Kérem a második számot"
if ($a -lt 0)
{
 $a*=-1
}
if ($b -lt 0)
{
 $b*=-1
}
$i=$a
if ($b -lt $a)
{
 $i=$b
}
while (($a % $i -ne 0) -or ($b % $i -ne 0))
{
 --$i
}
Write-Host "Legnagyobb közös osztójuk: "$i