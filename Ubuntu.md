# vimコマンド
https://qiita.com/wasanx25/items/405e215447d274f49617

# 警告音の消去
https://it-blue-collar-dairy.com/mute_beep_on_ubuntu/

# Mozcの設定
US配列の設定
https://qiita.com/nabenabe0928/items/09affae67df9c150ad50


# xrdpでリモートデスクトップしたときの「カラープロファイルを作成するには認証が必要です」を消す

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
