]#!/usr/bin/env bash
# File: repseq.sh

sequence=$(eval echo {$1..$2})

for i in $sequence
do
  compute=$(echo "$i % $3" | bc)
  result="$result $compute"
done

echo $result

