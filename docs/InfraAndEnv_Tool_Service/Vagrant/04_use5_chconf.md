## ssh 接続名変更
```
ホスト名を付ける（今回は、「harmony」）
vagrant ssh-config --host harmony

コンフィグに追記
vagrant ssh-config --host harmony >> ~/.ssh/config

このコマンドで接続可
ssh harmony
```
