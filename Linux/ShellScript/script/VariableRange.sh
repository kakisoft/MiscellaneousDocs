#!/usr/bin/bash

hello() {
  name1="kaki"
  local name2="soft"
  echo "hello ..."
}

hello
echo $name1 #=> kaki 
echo $name2 #=> "" 


