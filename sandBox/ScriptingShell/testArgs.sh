#!/usr/bin/env zsh
echo "\$@ is: $@ (with each arg being a separate word)"
echo "\$* is: $* (with all args as one word)"
echo "\$0 is: $0"
echo "\$1 is: $1"
echo "\$2 is: $2"
echo "\$# is: $#"

echo "----------"
echo "\$@"
for word in "$@"; do
  echo $word
done

echo "---------"
echo "\$*"
for word in "$*"; do
  echo $word
done

