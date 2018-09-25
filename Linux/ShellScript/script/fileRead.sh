#!/usr/bin/bash

i=1
while read line; do
  echo $i "$line"
  ((i++))
done < colors.txt # ファイル名。

#done   # パイプを繋げて、リダイレクト。  
