```
## サブフォルダも合わせて作成
mkdir -p myapp02/config

## 履歴
Ctrl + r

## 簡易ヘルプ
mkdir --help


## コマンドの存在確認
type cat

## コマンド（スクリプト？）
vi hi

※↓先頭の２文字は「シェバン」と呼ばれる。
　 これがあったら、次に書くプログラムで実行しなさい、という意味。
=============
#!/bin/bash
echo "hi"
==============
（実行）
./hi


## コマンドの場所を検索
which cat


## ブレース展開
echo {a,b,c}        #=> a b c
echo {1..5}         #=> 1 2 3 4 5
echo {a,b,c}{1..5}  #=> a1 a2 a3 a4 a5 b1 b2 b3 b4 b5 c1 c2 c3 c4 c5
mkdir app{1..10}    #=> フォルダ「app1～10」を作成
touch app{1..5}/test{1..3}{.txt,.jpeg,.gif}


## 英語表示（）
LANG=C


## ファイル復元
※ファイルシステムがext3かext4の場合のみ
extundelete

```
