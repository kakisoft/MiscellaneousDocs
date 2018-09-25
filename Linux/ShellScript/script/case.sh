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

