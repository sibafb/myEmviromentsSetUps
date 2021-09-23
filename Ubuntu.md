# 管理者権限の付与

[【Ubuntu】ユーザ管理の方法について、ちゃんと調べてみた](https://thoames.hatenadiary.jp/entry/2020/05/22/143845)

```shell
sakura@ubuntu1204:~$ sudo gpasswd -a tsubaki sudo
ユーザ tsubaki をグループ sudo に追加
```

参考：https://linux.just4fun.biz/?Ubuntu/%E8%BF%BD%E5%8A%A0%E6%B8%88%E3%81%BF%E4%B8%80%E8%88%AC%E3%83%A6%E3%83%BC%E3%82%B6%E3%83%BC%E3%82%92%E7%AE%A1%E7%90%86%E8%80%85%E6%A8%A9%E9%99%90%E3%81%AB%E5%A4%89%E6%9B%B4%E3%81%99%E3%82%8B%E6%96%B9%E6%B3%95%E3%83%BBCUI%E7%B7%A8
# リソースのモニタ

gnome
```bash
gnome-system-monitor
```

top
```bash
top
```

# ファイルの所有者を再帰的に変更する

```shell
chown -R aki ~/work/change/
```

# vim

<details><summary>コマンド集</summary>
  
https://qiita.com/wasanx25/items/405e215447d274f49617

</details>

[【入門】Vimで高速で移動~プラグインなしでの移動まとめ~](https://qiita.com/takeharu/items/9d1c3577f8868f7b07b5)

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

# VSCode

<details><summary>UbuntuにVSCodeをインストールする3つの方法</summary>

https://qiita.com/yoshiyasu1111/items/e21a77ed68b52cb5f7c8

</details>

<details><summary>VS CodeでDocker開発コンテナを便利に使おう</summary>

https://qiita.com/Yuki_Oshima/items/d3b52c553387685460b0
 
</details>


# Terminal

<details><summary>警告音の消去</summary>

https://it-blue-collar-dairy.com/mute_beep_on_ubuntu/
 
</details>
  
# Docker

<details><summary> Docker 関連 </summary>

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

## Dockerでホストとコンテナ間でのファイルコピー
  
https://qiita.com/gologo13/items/7e4e404af80377b48fd5  
https://medium.com/veltra-engineering/how-to-copy-a-directory-using-docker-cp-command-f2c73f9ccf75

コンテナからホスト
```
docker cp <コンテナID>:/etc/my.cnf my.cnf
```
ホストからコンテナ
```
docker cp my.cnf <コンテナID>:/etc/my.cnf
```
  
ディレクトリごと
```
docker cp ./bar/. test4:/foo/bar
```  
## Dockerでホストのフォルダをマウントする
  
https://qiita.com/Yarimizu14/items/52f4859027165a805630
  


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

下記のパスにコマンド”command”というファイルを置くと
```bash
vim /usr/local/bin/command  
```
”command” で中身に記述したスクリプトが起動する。
```
command
```
  
https://qiita.com/yoshiken/items/2b8e6c24d6b95e65b625
  
  
https://linuc.org/study/knowledge/544/
  
 ___「/usr/local/bin」には、「シングルユーザモードで利用しない」かつ「RPMやdebなどのパッケージ管理システムによってシステムに管理されないコマンドやプログラム」が置かれることになります。自作のスクリプトなどはこのディレクトリに置くことが一般的です。___
</details>

# コマンドを残さないようにする

<details><summary>historyにコマンドを記憶させたくない時</summary>

https://qiita.com/matsuda_sinsuke/items/a29378d780bc540bedef

  ```bash
HISTCONTROL=ignorespace
```

</details>

# git

git push でパスワードの入力を省く  
[Gitにパスワード認証なしでPushするまでの手順](https://nishinatoshiharu.com/how-to-gitpush-with-ssh/)


