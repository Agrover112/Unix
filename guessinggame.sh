#!/usr/bin/env bash
#File:guessinggame.sh

function guessing_game()
{
local count=$(ls | grep ^- | ls -l)

while  true;
do
 read -p "Enter your guess :" mg
if ! [[ $mg =~ ^[0-9]+$ ]]
then
continue;
fi

 if [[ $mg -lt $count ]]
 then
    echo "guessed num  LESSER than true num"
 elif [[ $mg -gt $count ]]
 then
    echo "guessed num GREATER than true num"
 else
    echo "CONGRATULATIONS! Right guess! "
break
 fi
done
}
echo "Let the guessin game begin..."
guessing_game
