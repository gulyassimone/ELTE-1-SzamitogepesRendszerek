Write-Host "Minden sor masodik szava: "

foreach($i in Get-Content $args[0])
{
    $i.Split(' ')[1]
} 