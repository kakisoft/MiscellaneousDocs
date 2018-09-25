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

