[double]$a = Read-host Kerem az a-t
[double]$b = Read-Host kerem a b-t
[double]$c = Read-Host kerem a c-t
Write-Host Az egyenlet: $a*x2+$b*x+$c=0
$diszkriminans=[Math]::pow($b,2)-4*$a*$c
if($diszkriminans -lt 0)
{
    Write-Host Nincs megoldas
}
elseif($diszkriminans -eq 0)
{
    $x1=((-$b)/2*$a)
    Write-Host Egy megoldasa van $x1
}
else
{
    $x1=(((-$b)+[Math]::sqrt($diszkriminans))/(2*$a))
    $x2=(((-$b)-[Math]::sqrt($diszkriminans))/(2*$a))
    Write-Host Az egyenlet megoldasai $x1 $x2
}
