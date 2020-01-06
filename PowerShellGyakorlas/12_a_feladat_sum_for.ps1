$sum=0
for($i=0; $i -lt $args.Length; $i++)
{
    $sum=$sum+$args[$i]
}
Write-Host A parameterek osszege: $sum