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
