#!/usr/bin/env bash

if [[ $1 =~ ^[0-9]*+\.?[0-9]+$ ]] && [[ $2 =~ ^[0-9]*+\.?[0-9]+$  ]]
then 
echo " $1 + $2 " | bc 
else
echo "Not a Number"
fi

