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
