#!/usr/bin/env bash
# File: addseq.sh

function addseq {
  sum=0

  for element in $@
  do
    sum=$(echo "$sum + $element" | bc -l )
  done

  echo $sum
}
