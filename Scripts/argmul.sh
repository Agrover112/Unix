#!/usr/bin/env bash
#File :mul.sh
echo "Enter arguments: $@"
echo "$1 * $#" | bc -l  
