#/usr/bin/env bash
#File:HP.sh
echo "Start...."
read var
if  [[  $var =~ [A-Z]. ]]
then
    echo "how proper"
else
    echo "FAILED"
fi
