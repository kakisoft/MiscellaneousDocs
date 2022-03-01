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
