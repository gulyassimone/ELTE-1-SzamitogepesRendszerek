write-host A paraméterként kapott fájl sorainak második szavai:
foreach ($i in Get-Content $args[0])
{
 write-host $i.Split(' ')[1]
}
