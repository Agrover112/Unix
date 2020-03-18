#!/usr/bin/env bash

i=0
arr=()
while [[ $i -le 3 ]]
do
  echo Number: $i
arr+="$i "
  ((i++))
done
echo " ${arr[@]}"
