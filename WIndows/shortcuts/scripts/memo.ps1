$date = Get-Date -Format "yyyyMMdd_HHmm"
$dest = Join-Path $env:HOMEPATH\memo ($date + ".txt")
echo $dest
New-Item $dest
vim $dest
