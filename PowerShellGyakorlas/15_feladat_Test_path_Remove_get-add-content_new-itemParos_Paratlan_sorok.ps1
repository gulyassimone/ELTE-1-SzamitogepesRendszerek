if(Test-Path $args[0])
{
    if (Test-Path ParosSorok.txt)
    {
        Remove-Item ParosSorok.txt
    }
    if (Test-Path ParatlanSorok.txt)
    {
        Remove-Item ParatlanSorok.txt
    }
    New-Item -Name ParosSorok.txt -ItemType File
    New-Item -Name ParatlanSorok.txt -ItemType File
    [bool]$Paros=$true
    foreach ($i in Get-Content $args)
    {
        if($Paros)
        {
            Add-Content ParosSorok.txt -Value $i
        }
        else 
        {
            Add-Content ParatlanSorok.txt -Value $i
        }
        $Paros= -not $Paros
    }
}
else
{
    Write-Host Nincs ilyen fajl
}