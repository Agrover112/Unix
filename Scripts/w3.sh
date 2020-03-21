
#!/usr/bin/env bash
# File: W3.sh

function plier {
 local p=1

  for element in $@
  do
    p=$(echo "$p * $element" | bc -l )
  done

  echo $p
}
#Checking odd or even

function isiteven
{
local res=0
res=$(bc<<<" $1 % 2" )
echo $res
if [[ $res -eq 0 ]]
then
echo "True"
else
echo "False"
fi
}


function neven
{
 nev=0
local res=0
for n in $@
do
res=$(bc<<<" $n % 2" )
if [[ $res -eq 0 ]]
then
((++nev ))
fi
done
echo "$nev"
}

function howodd
{
NEV=0
NEV=$(neven $@)
echo "($# - $NEV)/$# *100" | bc -l

}

function fib
{
N=$1
a=0
b=1
for (( i=0; i<N; i++ ))
do
if [[ $i -ne $N ]]
then
    echo -n "$a "
else
    echo  "$a\n"
fi
    fn=$((a + b))
    a=$b
    b=$fn
done
}
