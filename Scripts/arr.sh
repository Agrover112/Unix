#!/usr/bin/env  bash
#File: arr.sh

arr1=($1)
arr2=($2)
echo " ${arr1[*]}  ${arr2[*]} "
echo " ${#arr1[*]} + ${#arr2[*]} " | bc 
