#!/usr/bin/env zsh
for num in $@; do 
  if ((num%15==0)); then
    echo FizzyBuzzy
  elif ((num%3==0)); then
    echo Fizz
  elif ((num%5==0)); then
    echo Buzz
  else
    echo $num
  fi
done 
