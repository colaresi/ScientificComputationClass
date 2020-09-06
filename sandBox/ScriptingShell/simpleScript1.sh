#!/usr/bin/env zsh

for file in *.csv; do
  if [ $(echo ${file:0:4}) = data ]; then
    echo "$file is data"
  elif [ $(echo ${file:0:4}) = code ]; then
      echo "$file is code"
  else
    echo "$file is not data or code, CHECK THIS"
  fi
done
   
