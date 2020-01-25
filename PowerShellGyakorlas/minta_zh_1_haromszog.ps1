[int]$atfogo=$args[0]
[int]$befogo=$args[1]
if($args.count -gt 2)
{
       Write-Host "Tobb mint 2 parametert adott meg!"
}
else
{
    if($args.count -lt 1)
    {
        $atfogo=Read-Host "Kerem az atfogo erteket"
    }
    if($args.count -lt 2)
    {
        $befogo=Read-Host "Kerem a befogo erteket"
    }
    $masikatfogo=$atfogo*$atfogo-$befogo*$befogo
    Write-Host "A masik befogo hosszanak negyzete ($atfogo*$atfogo - $befogo*$befogo)=$masikatfogo" -NoNewline
}