[int]$max=$args[0]
if($args.Count -gt 0)
{
    foreach ($i in $args)
    {
        if($max -lt $i)
        {
          $max=$i
        }
     }
     Write-Host "A legnagyobb ertek: $max" -NoNewline
}
else
{
     Write-Host "A legnagyobb ertek:" -NoNewline
}
    

