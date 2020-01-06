$a=Read-Host -Prompt "Kerek egy kisebb szamot"
$b=Read-Host -Prompt "Kerek egy nagyobb szamot"

if($a -le $b)
{

    foreach($i in Get-Content $args[0])
    {
        $i.Substring($a-1,$b-$a+1)
    } 
}
else
{
    Write-Host "Hibas Bemenet"
}