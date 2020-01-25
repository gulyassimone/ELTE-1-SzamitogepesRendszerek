Készítsünk el egy másodfokú egyenletet kiszámító scriptet, amelyik billentyűzetről olvassa be az
adatokat!
Write-Host "Másodfokú egyenlet megoldó program"
[double]$a=read-host "Írd be az ""a"" együtthatót"
[double]$b=read-host "Írd be a ""b"" együtthatót"
[double]$c=read-host "Írd be a ""c"" együtthatót"
Write-Host "Az egyenlet: "$a"*x2+"$b"*x+"$c"=0"
$diszkrimináns=[Math]::pow($b,2)-4*$a*$c
if ($diszkrimináns -lt 0)
{
 Write-Host "Nincs megoldás"
}
elseif ($diszkrimináns -eq 0)
{
 $x1=(-$b)/2*$a
 Write-Host "Egy megoldás van: "$x1
}
else
{
 $x1=(((-$b)+[Math]::sqrt($diszkrimináns))/(2*$a))
 $x2=(((-$b)-[Math]::sqrt($diszkrimináns))/(2*$a))
 Write-Host "Az egyenlet megoldásai: "$x1" és "$x2
}