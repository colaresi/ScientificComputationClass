#!/usr/bin/env zsh
file='ids.dat'
if test -f "$file"; 
    then echo "$file exists" 
    else echo "$file does not exist" 
fi


