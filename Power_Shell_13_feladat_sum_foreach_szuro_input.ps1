$sum=0
if (@($input).Count -ne 0)
{
    $input.Reset()
    foreach($i in $input)
    {
        $sum=$sum+$i
    }
}
else
{
    foreach($i in $args)
    {
        $sum=$sum+$i
    }
}

Write-Host A parameterek osszege: $sum