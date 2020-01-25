Write-Host "Minden sor 2-4 karaktere "

foreach($i in Get-Content $args[0])
{
    $i.Substring(1,3)
} 