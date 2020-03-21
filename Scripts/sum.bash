#!usr/bin/env bash
echo "Enbter variable"
read var1
read var2
read var3
echo "( $var1^2 -  $var2^2 )/($var1 +$var2 + $var3)" | bc -l
