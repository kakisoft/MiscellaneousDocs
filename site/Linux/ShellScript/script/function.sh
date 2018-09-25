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
