$date = Get-Date -Format "yyyyMMdd_HHmm"
$dest = Join-Path $env:HOMEPATH\_WS\_memo ($date + ".txt")
$defaultcontent = ("■"+$date+" memo ")

if (-not (Test-Path $dest)){
        New-Item $dest
        echo $defaultcontent >> $dest
}

vim $dest

$content = Get-Content $dest
if ( $content -eq ("■"+$date+" memo ") ){
        Add-Type -Assembly System.Windows.Forms
        $result =[System.Windows.Forms.MessageBox]::Show("ファイルを削除します。", "info","YesNo")
        If($result -eq "Yes" ){
                Remove-Item $dest
        }
}
