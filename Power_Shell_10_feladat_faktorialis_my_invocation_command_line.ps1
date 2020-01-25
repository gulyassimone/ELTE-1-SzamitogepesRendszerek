if ($args.Length -ne 1)
{
    Write-Host "Pontosan egy parametert kell hasznalata: $($MyInvocation.MyCommand.Name) <szam>"
}
else
{
    $fakt=1
    for($i=1; $i -le $args[0]; $i++)
    {
        $fakt=$fakt*$i
    }
    Write-Host "A $($args[0]) faktorialisa $fakt "
}