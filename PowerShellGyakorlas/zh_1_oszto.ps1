[int]$oszto=$args[0]
[int]$osztando=$args[1]
if($args.count -gt 2)
{
       Write-Host "Tobb mint 2 parametert adott meg!"
}
else
{
    if($args.count -lt 1)
    {
        $oszto=Read-Host "Kerem az oszto erteket"
    }
    if($args.count -lt 2)
    {
        $osztando=Read-Host "Kerem a osztando erteket"
    }
    $masikatfogo=$oszto/$osztando
    Write-Host "A masik befogo hosszanak negyzete $oszto/$osztando=$masikatfogo" -NoNewline