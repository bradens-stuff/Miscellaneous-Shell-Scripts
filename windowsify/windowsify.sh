#!/bin/bash
if [ "$1" == "-r" ] ; then
  sed 's/
  mv $2.cp $2
  echo File has been reverted. Newlines are now LF style
else
  sed 's/$/
  mv $1. $1
  echo File has been Formatted to Windows CRLF newline style.. New file: $1.txt
  mv $1 $1.txt
fi