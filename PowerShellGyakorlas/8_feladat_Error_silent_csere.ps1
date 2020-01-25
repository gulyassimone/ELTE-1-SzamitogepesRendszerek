$ErrorActionPreference="SilentlyContinue"
$a=Read-Host -Prompt "Kerek egy kisebb szamot"
$b=Read-Host -Prompt "Kerek egy nagyobb szamot"

if($a -gt $b)
{
    $c=$a
    $a=$b
    $b=$c
}

foreach($i in Get-Content $args[0])
{
    $i.Substring($a-1,$b-$a+1)
} 