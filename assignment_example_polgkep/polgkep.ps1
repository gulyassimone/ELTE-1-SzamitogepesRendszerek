Remove-Item ervenytelen.txt

if ($args.Count -eq 0) {
    $filename=read-host "Kerlek add meg az osszegyujtott szavazatokat tartalmazo fajl nevet!"
}else{
    $filename=$args[0]
}

while ( ! (test-path "$filename" )) {
    echo "  HIBA! Ilyen fajl nincs."
    $filename=read-host "    Add meg ujra a fajl nevet!"
}

foreach($sor in Get-Content polgarmesterek.txt){
(Get-Content $filename) -match $sor | Out-File -Append szurtnev
} 


foreach($sor in Get-Content kepviselok.txt){
(Get-Content szurtnev) -match $sor | Out-File -Append szurtnevteljes
} 




foreach($line in Get-Content $filename){

    $ervenytelen=1

    foreach($szline in Get-Content szurtnevteljes){
        if ($line -eq $szline){
           $ervenytelen=0
        }
    } 

    if ($ervenytelen -eq 1){
        Add-Content ervenytelen.txt $line
    }
} 


Write-Host "Ervenyes, polgarmesterre leadott szavazatok szama:"

foreach($line in Get-Content polgarmesterek.txt){
$db=0
    foreach($szline in Get-Content szurtnevteljes){
        if($szline -match $line)
        {
        $db=$db+1
        }
    }

Write-Host $line : $db
}

Write-Host "Ervenyes, kepviselore leadott szavazatok szama:"

foreach($line in Get-Content kepviselok.txt){
$db=0
    foreach($szline in Get-Content szurtnevteljes){
        if($szline -match $line)
        {
        $db=$db+1
        }
    }

Write-Host $line : $db
}

Remove-Item szurtnev
Remove-Item szurtnevteljes


