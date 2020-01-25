﻿param
(
    [Parameter(Mandatory=$true)]$Szamjegy
)
Switch ($Szamjegy)
{
    0 {Write-Host nulla -NoNewline}
    1 {Write-Host egy -NoNewline}
    2 {Write-Host ketto -NoNewline}
    3 {Write-Host harom -NoNewline}
    4 {Write-Host negy -NoNewline}
    5 {Write-Host ot -NoNewline}
    6 {Write-Host hat -NoNewline}
    7 {Write-Host het -NoNewline}
    8 {Write-Host nyolc -NoNewline}
    9 {Write-Host kilenc -NoNewline}
    A {Write-Host tiz -NoNewline}
    B {Write-Host tizenegy -NoNewline}
    C {Write-Host tizenketto -NoNewline}
    D {Write-Host tizenharom -NoNewline}
    E {Write-Host tizennegy -NoNewline}
    F {Write-Host tizenot -NoNewline}
    default {Write-Host "Nem szamjegyet adott meg!" -NoNewline}
}