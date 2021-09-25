# Vim

[vimで作られるファイルへの対処法 .swp .un~ .*~](https://qiita.com/chihiro/items/3b8d643474f3accc9b3c)

# Windows10でHHKBのUSキーボードを使う
https://qiita.com/shun-koto/items/9b2846259092a2ca7877

# キーボード配置を変更する

[Change Key](https://forest.watch.impress.co.jp/library/software/changekey/)

# スタートアップ

Win+Rの検索して実行画面で
```bash
shell::startup
```
で開く場所に、ショートカットファイルを置く（.batでもいいし、ショートカットでも良い

# 環境変数の確認

<details><summary>PowerShellでの環境変数の参照方法</summary>
 
[PowerShellでの環境変数の参照方法](https://www.fenet.jp/infla/column/engineer/powershell%E3%81%A7%E3%81%AE%E7%92%B0%E5%A2%83%E5%A4%89%E6%95%B0%E3%81%AE%E6%89%B1%E3%81%84%E6%96%B9%E3%81%A8%E3%81%AF%EF%BC%9F%E5%8F%82%E7%85%A7%E3%83%BB%E5%A4%89%E6%9B%B4%E3%81%99%E3%82%8B%E6%96%B9/)

```bash
$ENV:Path.Split(";")
C:\Windows\system32
C:\Windows
...
```

</details>

# Dokcer+ROS

<details><summary>Docker＋ROSの環境をWindows10PROで整える</summary>
 
https://qiita.com/t_kumazawa/items/aa541758be558673e76b
 
</details>

<details><summary>「プログラミングROS」を買ったので真似して動かしてみた</summary>
 
https://qiita.com/t_kumazawa/items/cb0e28284ca74e73b036

</details>

<details><summary>Using GUI's with Docker</summary>
 
http://wiki.ros.org/docker/Tutorials/GUI

</details>

# WSL2

<details><summary>WSL2 + Docker(ubuntu18.04) からGUIアプリを起動</summary>

 参考：[WSL2 + Docker(ubuntu18.04) からGUIアプリを起動し、ついでにchromeも起動する](https://qiita.com/chilchil0/items/9c7c56ad1cdafef389c4)
  
```bash
 sudo apt-get install xserver-xorg x11-apps 
```
 
但し、ディスプレイ設定のみ下記にした
 
```bash
 powershell>ipconfig
 イーサネット アダプター vEthernet (WSL):

   接続固有の DNS サフィックス . . . . .:
   リンクローカル IPv6 アドレス. . . . .: fe80::25e3:9034:20f7:e44f%62
   IPv4 アドレス . . . . . . . . . . . .: 172.25.208.1
   サブネット マスク . . . . . . . . . .: 255.255.240.0
   デフォルト ゲートウェイ . . . . . . .:
```
 
 ```bash
 wsl>export DISPLAY=172.25.208.1:0
 ```
 
 </details>
 
<details><summary>DockerでGUIアプリを起動する(amd64)(GPU)(ROS2)</summary>
 
 [DockerでGUIアプリを起動する](https://qiita.com/t_kumazawa/items/7aa18fc6669bd5a47d37)
 
</details>
 
<details><summary>デフォルトのwsl環境を変える</summary>

Wslの環境一覧を表示する 
```bash
>wsl --list
Linux 用 Windows サブシステム ディストリビューション:
docker-desktop (既定)
Ubuntu-20.04
docker-desktop-data
```

Wslの環境一覧を表示する 
```bash
wsl --set-default Ubuntu-20.04
```

</details>

<details><summary>sudoが効かない</summary>
 
dockerが規定だとsudoが効かなくなる。
```bash
>wsl --list
Linux 用 Windows サブシステム ディストリビューション:
docker-desktop (既定)
Ubuntu-20.04
docker-desktop-data
```
  
```bash
DESKTOP-95K3KO3:/tmp/docker-desktop-root/mnt/host/c/Users/siba1# sudo
-sh: sudo: not found
```

</details>

# Powershell

<details><summary>Powershellで環境変数の追加</summary>

https://qiita.com/gx3n-inue/items/00ee48996e973050a440

末尾に追加

```bash
$ENV:Path+=";追加したいパス"
```
</details>

<details><summary>レジストリからインストール済アプリケーションを取得する</summary>

```bash
Get-ChildItem -Path(
'HKLM:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall',
'HKCU:SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall') | 
% { Get-ItemProperty $_.PsPath | Select-Object DisplayName, DisplayVersion, Publisher }
```

[PowerShellでインストール済アプリケーション一覧を取得する](https://win.just4fun.biz/?PowerShell/%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E6%B8%88%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E4%B8%80%E8%A6%A7%E3%82%92%E5%8F%96%E5%BE%97%E3%81%99%E3%82%8B#cfdf5996)
 
</details>
 
 <details><summary>PowerShellスクリプトへのショートカットを作成する</summary>
 
 https://www.atmarkit.co.jp/fwin2k/win2ktips/1024psshrtct/psshrtct.html
 
</details>

 <details><summary>Powershellでvimを使う</summary>
 
 [Powershellでvimを使う](https://qiita.com/shuhoyo/items/d9966e12976275f20c24)
 
```bash
code $profile
```
 
```bash
set-alias vi 'C:\Program Files (x86)\Vim\vim82\vim.exe'
set-alias vim 'C:\Program Files (x86)\Vim\vim82\vim.exe'
```
  
</details>
