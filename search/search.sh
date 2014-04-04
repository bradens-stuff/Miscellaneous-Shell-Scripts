#!/bin/sh
# Search.sh by Braden Best
# Search a directory for text in files (recursive)
# Usage: sh search.sh [term1] [term2] ...

clear

search(){
  list=`find . -type f`

  for file in $list ; do
    num=`cat -n $file | grep "$1" | wc -l`
    if [ $num -ne 0 ] ; then
      echo "$file ($num): "
      cat -n $file | grep "$1"
      echo
    fi
  done
}

for arg in $* ; do
  echo "Searching for \"$arg\""
  search $arg
  echo "============================================="
done
