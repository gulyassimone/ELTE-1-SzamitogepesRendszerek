12. Készítsünk scriptet, amelyik kiszámolja az összes paraméter összegét! Készítsük el a megoldást
for és foreach használatával is!
$sum=0
for ($i=0; $i -lt $args.Length; ++$i)
{
 $sum=$sum+$args[$i]
}
Write-Output "A paraméterek összege: $sum"
vagy
$sum=0
foreach ($i in $args)
{
 $sum=$sum+$i
}
Write-Output "A paraméterek összege: $sum"