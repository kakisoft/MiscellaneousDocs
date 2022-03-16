## hello.sh
```sh
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
```

________________________________________
## array.sh
```sh
#!/usr/bin/bash
# 配列

colors=(red blue pink)
echo ${colors[0]} # red
echo ${colors[1]} # blue
echo ${colors[2]} # pink
echo ${colors[@]} # red blue pink
echo ${#colors[@]} # 3

colors[1]=silver
colors+=(green orange)
echo ${colors[@]}
```

________________________________________
## calc.sh
```sh
#!/usr/bin/bash

echo 5+2 #=> "5+2"

echo `expr 5 + 2` #=> 7

## 今はこっちが主流。
echo $((5 + 2)) #=> 7

## (())にて使う変数には、$は不要。
n=5
((n=n+5)) #=> 10 
echo $n

## + - * / % ** ++ --

echo $((10 / 3)) #=> 3
```

________________________________________
## case.sh
```sh
#!/usr/bin/bash

read -p "Signal color? " color
case "$color" in
  red)
    echo "stop"
    ;;
  blue|green)
    echo "go"
    ;;
  yellow)
    echo "caution"
    ;;
  *)
    echo "wrong signal"
esac
```

## colors.txt
```
red
blue
pink
```

________________________________________
## compare.sh
```sh
#!/usr/bin/bash

## [[]]  文字列の比較 
## (())  数値の比較

read -p "Name? " name

#=========================
#         演算子 
#=========================
# =
# == 
# !=
# -z   文字列の長さが 0
# =~   正規表現

if [[ $name = "kaki" ]]; then
  echo "welcome"
fi
if [[ -z $name ]]; then
  echo "empty ..."
fi

if [[ $name =~ ^t ]]; then
  echo "starts with t..."
fi
```

________________________________________
## fileExists.sh
```sh
#!/usr/bin/bash

#=========================
#      存在チェック 
#=========================
# -e   種類を問わず存在しているかどうか調べる
# -f   ファイルが存在しているか
# -d   ディレクトリが存在しているか

if [[ -f $0 ]]; then
  echo "file exists ..."
fi
if [[ -d $0 ]]; then
  echo "dir exists ..."
fi


# && || !
# == 
# !=
# >
# >=
# <
# <=
read -p "Number? " n
if ((n > 10)); then
  echo "bigger than 10"
fi
```

________________________________________
## fileRead.sh
```sh
#!/usr/bin/bash

i=1
while read line; do
  echo $i "$line"
  ((i++))
done < colors.txt # ファイル名。

#done   # パイプを繋げて、リダイレクト。
```

________________________________________
## function.sh
```sh
#!/usr/bin/bash

##  戻り値
# 0 正常終了
# 1 それ以外

# function hello() {   #「function」は、省略可。 
hello() {
  # echo "hello ..."
  echo "hello ... $1"

  if [[ $1 == "kaki" ]]; then
    return 0
  else
    return 1
  fi
}


hello
hello kaki
hello soft
hello kaki; echo $? # 0
hello soft; echo $? # 1
```


________________________________________
## if.sh
```sh
#!/bin/bash
# if

read -p "Name? " name
# if test "$name" = "kaki"
# if [ "$name" = "kaki" ]
# then
#   echo "welcome"
# elif [ "$name" = "kakisoft" ]
# then
#   echo "welcome, too"
# else
#   echo "you are not allowed"
# fi

if [ "$name" = "kaki" ]; then
  echo "welcome"
elif [ "$name" = "kakisoft" ]; then
  echo "welcome, too"
else
  echo "you are not allowed"
fi
```


________________________________________
## input.sh
```sh
#!/usr/bin/bash

#=========================
#    ユーザの入力受付
#=========================

## ブラックボックス
# read name
# echo "hello $name"
# read -p "Name: " name
# echo "hello $name"

read -p "Pick 3 colors: " c1 c2 c3
echo $c1
echo $c2
echo $c3
```

________________________________________
## loop.sh
```sh
#!/usr/bin/bash

for i in 1 2 3 4 5; do
  echo $i
done

for i in {1..5}; do
  echo $i
done

for ((i=1; i<=5; i++)); do
  echo $i
done

 colors=(red blue pink)
 for color in ${colors[@]}; do
   echo $color
 done

# for item in `date`; do
for item in $(date); do
  echo $item
done







i=0
while ((i < 10)); do
  ((i++))
  echo $i
done

i=0
while ((i < 10)); do
  ((i++))
  if ((i == 4)); then
    continue
  fi
  if ((i == 8)); then
    break
  fi
  echo $i
done

while :
do
  read -p "Command? " cmd
  if [[ $cmd == "quit" ]]; then
    break
  else
    echo "$cmd"
  fi
done
```


________________________________________
## select.sh
```sh
#!/usr/bin/bash

select color in red blue yellow green; do
  case "$color" in
    red)
      echo "stop"
      ;;
    blue|green)
      echo "go"
      ;;
    yellow)
      echo "caution"
      ;;
    *)
      echo "wrong signal"
      break
  esac
													    done
```


________________________________________
## VariableRange.sh
```sh
#!/usr/bin/bash

hello() {
  name1="kaki"
  local name2="soft"
  echo "hello ..."
}

hello
echo $name1 #=> kaki 
echo $name2 #=> "" 
```

