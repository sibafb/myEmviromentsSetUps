# vim

<details><summary>コマンド集</summary>
  
https://qiita.com/wasanx25/items/405e215447d274f49617

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

# 自作コマンド

<details><summary>自作のコマンドを作成する</summary>
https://qiita.com/yoshiken/items/2b8e6c24d6b95e65b625
  
  
https://linuc.org/study/knowledge/544/
 ___「/usr/local/bin」には、「シングルユーザモードで利用しない」かつ「RPMやdebなどのパッケージ管理システムによってシステムに管理されないコマンドやプログラム」が置かれることになります。自作のスクリプトなどはこのディレクトリに置くことが一般的です。___
</details>
  
