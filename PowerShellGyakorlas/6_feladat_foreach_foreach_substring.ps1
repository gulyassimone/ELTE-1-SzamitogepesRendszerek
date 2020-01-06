$a=Read-Host -Prompt "Kerek egy kisebb szamot"
$b=Read-Host -Prompt "Kerek egy nagyobb szamot"

foreach($i in Get-Content $args[0])
{
    $i.Substring($a-1,$b-$a-1)
} 