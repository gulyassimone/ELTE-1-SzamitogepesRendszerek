13. Módosítsuk az előző scriptet úgy, hogy szűrőként is használhassuk!
$sum=0
if (@($input).Count -ne 0)
{
 $input.Reset()
 foreach($i in $input)
 {
 $szum+=$i
 }
}
else
{
 foreach ($i in $args)
 {
 $szum+=$i
 }
}
Write-Host $szum
