# vim

<details><summary>コマンド集</summary>
  
https://qiita.com/wasanx25/items/405e215447d274f49617

</details>


<details><summary>デフォルトで行＆モード表示</summary>

参考:[初心者向け vimrcの設定方法](https://qiita.com/iwaseasahi/items/0b2da68269397906c14c)
```shell
vim ~/.vimrc
```

```shell
"----------------------------------------
" 表示設定
"----------------------------------------
" タイトルを表示
set title
" 行番号の表示
set number

```


</details>

# Terminal

<details><summary>警告音の消去</summary>

https://it-blue-collar-dairy.com/mute_beep_on_ubuntu/
 
</details>
  
# Docker

<details><summary> Docker のsudo要求を消す</summary>

## Docker のsudo要求を消す

https://qiita.com/DQNEO/items/da5df074c48b012152ee

```bash
# dockerグループがなければ作る
sudo groupadd docker

# 現行ユーザをdockerグループに所属させる
sudo gpasswd -a $USER docker

# dockerデーモンを再起動する (CentOS7の場合)
sudo systemctl restart docker

# exitして再ログインすると反映される。
exit
```

</details>
  
# Mozcの設定

[US配列の設定](https://qiita.com/nabenabe0928/items/09affae67df9c150ad50)

[layoutをdefaultから変える](https://jun-networks.hatenablog.com/entry/2019/11/20/160003)

# x server / リモートデスクトップ

<details><summary>「カラープロファイルを作成するには認証が必要です」を消す</summary>

## xrdpでリモートデスクトップしたときの「カラープロファイルを作成するには認証が必要です」を消す

ref: http://aimingoff.way-nifty.com/blog/2017/06/xrdp-4be6.html

```shell
sudo rm /etc/polkit-1/localauthority.conf.d/02-allow-colord.conf 
```

```shell
sudo vi /etc/polkit-1/localauthority/50-local.d/45-allow-colord.pkla
```

```shell
sudo systemctl restart polkit.service
```

</details>

# Chrome Remote Desktop 

<details><summary>Chrome リモートデスクトップ on Ubuntu</summary>
https://qiita.com/ninose14/items/473369d76814174dd58f
  
上記手順でいったんうまくいくものの、試行錯誤しているとまた真っ暗の画面だけになる。
</details>

# kindle

<details><summary>Kindleのフォント設定</summary>

参考：[Kindle for PC 1.26.0 x Wine5 x Ubuntu20.04](https://qiita.com/nanbuwks/items/042235c6a07d37f1af86)

上記のwinetricksだとうまくフォントファイルが入らなかったので、sudoを追加した。

```bash
sudo winetricks
```

</details>

# 自作コマンド

<details><summary>自作のコマンドを作成する</summary>
https://qiita.com/yoshiken/items/2b8e6c24d6b95e65b625
  
  
https://linuc.org/study/knowledge/544/
 ___「/usr/local/bin」には、「シングルユーザモードで利用しない」かつ「RPMやdebなどのパッケージ管理システムによってシステムに管理されないコマンドやプログラム」が置かれることになります。自作のスクリプトなどはこのディレクトリに置くことが一般的です。___
</details>
  
