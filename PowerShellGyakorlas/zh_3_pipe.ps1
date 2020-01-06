do
{
    Write-Host "Hany fajlt listazzak?"
    $n=Read-Host
    Get-ChildItem -Path "C:\Windows\System32"  | sort -Property Length -Descending | Select-Object -First $n | Format-Table Name, Length , LastWriteTime

}
while($n -ne 0)