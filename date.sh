#!/usr/bin/env bash

now=$(date + "$A")

if [[now -eq 'Wednesday']]
then 
echo "Today is Wednesday"
else
echo "Not Wednesday"
fi

