## sed
コマンドラインから使えるテキスト処理ツール


## バージョン確認
sed --version


##
```
-e    expression    処理の内容が 1 つしかない場合は、「-e」を省略することもできる
-i    バックアップを取る
-f    外部コマンド実行
```

## _
```
sed -e '3d' names.txt        #  names.txt の 3行目を削除
sed '3d' names.txt           # ↑と同義（-e を省略できるため）
sed -i.bak '3d' names.txt    # 3行目を削除。bak 拡張子のバックアップを作成
sed -f ex1.sed names.txt     # 外部コマンド実行。『ex1.sed』の内容が「3d」の場合、namex.txt に対し、3d を実行。


```



