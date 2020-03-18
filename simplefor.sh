#!/usr/bin/env bash
#File: simpleloop.sh


for i in {1..3}
do 
   echo "$i"
done

echo "Array: "

stooges=(curly laces moe)
for stooge in ${stooges[@]}
do
  echo "$stooge"
done
echo "Command substitution:"

for code in $(ls)
do
    echo "$code is a bash script"
done   	

