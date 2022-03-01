#!/usr/bin/bash
# comment

#=========================
#     改行付きで出力
#=========================
echo "hello world"  #=> echo 'hello world'

echo "foo"; echo "bar"


#=========================
#         変数    
#=========================
name="kaki"  # 大文字・小文字を区別する。
readonly name2="kakisoft"  # 読み取り専用
# name = "kaki"   # スペースを入れるとエラー

echo "hello $name"     #=> hello kaki 
echo "bye ${name}san"  #=> bye kakaki san 
echo 'bye ${name}san'  # '' は、変数が展開されない。



#=========================
#        特殊変数
#=========================
## 実行時に渡す引数
#$1  #最初の引数
#$2  #次の引数

## ./hello.sh a bb ccc
echo "hello $1"

echo $0 #スクリプトの名前 #=>./hello
echo $# #引数の数   #=>3
echo $@ #全ての引数  #=> $* a aa aaa






