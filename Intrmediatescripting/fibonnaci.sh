#!/bin/bash

a=0
b=1
for ((i=0; i<10; i++))
do
  echo $a
  fn=$((a + b))
  a=$b
  b=$fn
done
