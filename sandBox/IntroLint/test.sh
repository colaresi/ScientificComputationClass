!#/usr/bin/env bash

#note that shellcheck only works with bash, so just use that above

myVar = 2
echo "this is $myVar "

echo 'this is not $myVar'

grep -nE "*" `ls -a ` 

for temp in `ls -a`; do
	echo "$temp"
done



