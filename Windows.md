# Windows10でHHKBのUSキーボードを使う
https://qiita.com/shun-koto/items/9b2846259092a2ca7877

# 環境変数の確認

https://www.fenet.jp/infla/column/engineer/powershell%E3%81%A7%E3%81%AE%E7%92%B0%E5%A2%83%E5%A4%89%E6%95%B0%E3%81%AE%E6%89%B1%E3%81%84%E6%96%B9%E3%81%A8%E3%81%AF%EF%BC%9F%E5%8F%82%E7%85%A7%E3%83%BB%E5%A4%89%E6%9B%B4%E3%81%99%E3%82%8B%E6%96%B9/

```bash
$ENV:Path.Split(";")
C:\Windows\system32
C:\Windows
...
```

# Powershellで環境変数の追加

https://qiita.com/gx3n-inue/items/00ee48996e973050a440

末尾に追加

```bash
$ENV:Path+=";追加したいパス"
```