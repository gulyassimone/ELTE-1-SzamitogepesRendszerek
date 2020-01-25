[int]$szam= Read-Host Kerek egy termeszetes szamot
Write-Output $szam
if($szam -lt 0)
{
    Write-Output Nem termeszetes szam
}
elseif ($szam -eq 0)
{
    Write-Output Nem prim szam
}
elseif ($szam -eq 1)
{
    Write-Output Nem prim szam
}
elseif ($szam -eq 2)
{
    Write-Output Ez a szam prim
}
else
{
    $i=2
    while ($i -lt $szam -and $szam % $i -ne 0)
    {
        $i++
    }
    if($i -lt $szam)
    {
        Write-Host A szam nem prim
    }
    else
    {
        Write-Host A szam prim
    }
}