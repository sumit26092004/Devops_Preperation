#!/bin/bash


read n
flag=0
for ((i=2; i<n; i++))
do
  if [ $((n%i)) -eq 0 ]
  then
    flag=1
    break
  fi
done
[ $flag -eq 0 ] && echo "Prime" || echo "Not Prime"
