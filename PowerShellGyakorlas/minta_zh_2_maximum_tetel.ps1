[int]$min=$args[0]
if($args.Count -gt 0)
{
    foreach ($i in $args)
    {
        if($min>$i)
        {
          $min=$i
        }
     }
     Write-Host "A legkisebb ertek: $min" -NoNewline
}
else
{
     Write-Host "A legkisebb ertek:" -NoNewline
}
    

