$date = Get-Date -Format "yyyyMMdd_HHmm"
$dest = Join-Path $env:HOMEPATH\_WS\_memo ($date + ".txt")

if (-not (Test-Path $dest)){
  New-Item $dest
 }
echo ("■"+$date+" memo ") >> $dist
vim $dest
