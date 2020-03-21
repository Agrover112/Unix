#!/usr/bin/env bash
# File: numrange.sh

odd=$(echo "$1 % 2" | bc)

if [[ $odd -eq 0 ]]
then
  status="even"
else
  status="odd"
fi

if [[ $1 -gt 0 ]] && [[ $1 -lt 10 ]]
then
  location="in"
else
  location="out of"
fi

echo "This number is $status and $location range."
