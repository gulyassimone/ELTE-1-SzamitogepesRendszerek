do {
    Clear-Host
    Write-Host Kerem valasszon!
    Write-Host 1. Elso menupont
    Write-Host 2. Masodik menupont
    Write-Host 3. Kilepes
    $valasztas=Read-Host
    switch($valasztas)
    {
    1 {Write-Host elso menupontot valasztotta! }
    2 {Write-Host masodik menupontot valasztotta! }
    3 {Write-Host kilepest valasztotta! }
    default {Write-Host Hibas bemenet! }
    }
    Start-Sleep -Seconds 2

}
while ($valasztas -ne 3)