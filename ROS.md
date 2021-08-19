# Docker & Ubuntu

鉄板になりそう↓
<details><summary>Docker上のROSアプリケーションをホスト側のGUIで表示する[Ubuntu]</summary>
 
[Docker上のROSアプリケーションをホスト側のGUIで表示する](https://qiita.com/chikuta/items/a62cd1d8d945f9b826b1#:~:text=Docker%E4%B8%8A%E3%81%AEROS%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%82%92%E3%83%9B%E3%82%B9%E3%83%88%E5%81%B4%E3%81%AEGUI%E3%81%A7%E8%A1%A8%E7%A4%BA%E3%81%99%E3%82%8B)

</details>

<details><summary>Docker上のROSアプリケーションをホスト側のGUIで表示する[Windows]</summary>
 
 [Docker上のROSアプリケーションをホスト側のGUIで表示する](https://qiita.com/chikuta/items/a62cd1d8d945f9b826b1#:~:text=Docker%E4%B8%8A%E3%81%AEROS%E3%82%A2%E3%83%97%E3%83%AA%E3%82%B1%E3%83%BC%E3%82%B7%E3%83%A7%E3%83%B3%E3%82%92%E3%83%9B%E3%82%B9%E3%83%88%E5%81%B4%E3%81%AEGUI%E3%81%A7%E8%A1%A8%E7%A4%BA%E3%81%99%E3%82%8B)
 
 下記を削り、
 ```bash
xhost +local:root
 ```
 下記を追加（IPはWSlのip）
 ```bash
 export DISPLAY = 172.168.XX.XX 
 ``` 
 さらに,
 
[LinuxアプリをWindowsで動かそう SLでLinuxのGUIアプリを起動する話](https://veresk.hatenablog.com/entry/2020/02/26/190000)

 上記から、windows側でVcXsrv起動時に、Extra serrings でAdditional parameter for VcXsrvに-nowgl　を追加
 
</details>

<details><summary>Ubuntu on Docker on UbuntuでGUIを表示する方法</summary>
  
https://qiita.com/mocobt/items/726024fa1abf54d843e1
 
</details>

<details><summary>Docker上でGUIのROS1/ROS2を一瞬でセットアップする方法</summary>

https://qiita.com/karaage0703/items/957bdc7b4dabfc6639da

 </details>
