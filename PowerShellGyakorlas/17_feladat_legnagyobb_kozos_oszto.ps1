[int]$a=Read-Host kerem az elso szamot
[int]$b=Read-Host kerem a masodik szamot

if($a -lt 0)
{
    $a*=-1
}
if($b -lt 0)
{
    $b*=-1
}
$i=$a
if($b -lt $a)
{
    $i=$b
}
while($a%$i -ne 0 -and $b%$i -ne 0 )
{
    $i--
}
Write-Host legnagyobb kozos oszto $i