Készítsünk scriptet, amelyik kiszámolja a paraméterben megadott szám faktoriálisát! Ellenőrizze,
hogy 1 paramétert kapott-e. Ha nem, akkor jelezze a hibát és a helyes szintaxist.
if ($args.Length -ne 1 )
{
 Write-Host "Pontosan egy paraméter kell! A parancs helyes
használata: $($MyInvocation.MyCommand.Name) <szám>"
}
else
{
 $fakt=1
 for ($i=1; $i -le $args[0]; $i++)
 {
 $fakt=$fakt*$i
 }
 Write-Host "A(z) $($args[0]) faktoriálisa: $fakt"
 Write-Host "A(z)"$args[0]"faktoriálisa: $fakt"
}