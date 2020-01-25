do
{
    Write-Host "Hany fajlt listazzak?"
    $n=Read-Host
    Get-ChildItem | sort -Property LastWriteTime -Descending | Select-Object -First $n | Format-Table Name, LastWriteTime 

}
while($n -ne 0)