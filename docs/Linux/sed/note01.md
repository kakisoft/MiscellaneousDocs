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


## 使用例
```
sed -e '3d' names.txt        #  names.txt の 3行目を削除
sed '3d' names.txt           # ↑と同義（-e を省略できるため）
sed -i.bak '3d' names.txt    # 3行目を削除。bak 拡張子のバックアップを作成
sed -f ex1.sed names.txt     # 外部コマンド実行。『ex1.sed』の内容が「3d」の場合、namex.txt に対し、3d を実行。

sed '3p' names.txt           # 3 行目を print 
```

## 構成
```
「sed '3d' names.txt」

・'3d'の部分：address と command のペアになっている
　　　　　　　 address・・・どのような行に対して処理をするか（↑では 「3行目」）
　　　　　　　 command・・・何をするか（↑では、「削除」）

パターンスペース

「d」は削除だが、厳密にはパターンスペースの内容を削除。


アドレス部には、正規表現が使用可能。
（例）
「sed '/i$/d' names.txt」


アドレス部は省略可能。その場合、全ての行が対象となる。
（例）
「sed 'd' names.txt」 ⇒ 全削除

ーーーーーーーーーーーーーーーーーーーーーーー

3!d    3 行目以外は全部

ーーーーーーーーーーーーーーーーーーーーーーー
＜アドレスとコマンドを複数記述可＞
1d;3d


ーーーーーーーーーーーーーーーーーーーーーーー
＜範囲指定＞
1,3d    1 行目から 3行目


1~2d    1 行目から 2 つ跳ばしで非表示


$       最後の行
```

## コマンド
```
d    削除（delete）
p    表示（print）
q    quit
i    insert
a    append
y    位置文字ずつ置換
```

## p
```
「sed -n '3p' names.txt」とすると、3 行目だけを表示できる。

※p コマンドは、-n とよく使われる。

このオプションがない場合、標準動作のパターンスペースの内容表示も出力される。
（「全内容 + pオプションして指定した内容」が、出力内容となる。）
```

## q 
```
「sed '3q' names.txt」    3行目で処理を終了
```

## i
```
```


## y（）
```
「sed 'y/t/T/' names.txt」    t が全て大文字

「sed 'y/to/TO/' names.txt」   t と o を大文字

「sed 'y/to/OT/' names.txt」   t を O 、o を T

```
=というコマンドを使えば行番号を出力させることも可能です。
# "dotinstall"が出てくる行の行番号を出力
sed -n '/dotinstall/=' names.txt
```

