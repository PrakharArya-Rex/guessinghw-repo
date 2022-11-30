#!/usr/bin/env bash
# File: guessinggame.sh

function getcount {
  count=$(find . -maxdepth 1 -type f|wc -l)
  echo $count
}

ans=$(getcount)
echo "Hi, try guessing the number of files in this directory"

while [[ $ans -ne $num ]]
do
  read num
  if [[ $num -gt $ans+5 ]]
  then
    echo "It's way bigger, try a smaller number"
  elif [[ $num -lt $ans-5 ]]
  then
    echo "It's way smaller, try a bigger number"
  elif [[ $num -gt $ans ]]
  then
    echo "It's a bit bigger, try a smaller number"
  elif [[ $num -lt $ans ]]
  then
    echo "It's a bit smaller, try a bigger number"
  fi
done

echo "Congrats! You WIN!"
