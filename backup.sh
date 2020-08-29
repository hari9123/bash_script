#!/bin/bash

function file_back () {
if [ -f $1 ]
then
  back="/tmp/$(basename ${1}).$(date +%F).$$"
  echo "copying file $1 to $back"
  cp $1 $back
fi
}
x=0
for i in $@
do
x=$((${x}+1))
done
if [ $x -eq 0 ]
then
echo "Please provide filename with the script as an argument"
elif [ $x -gt 1 ]
then
echo "Provide only one argument"
elif [ $x -eq 1 ]
then
  file_back $1
  if [ $? -eq 0 ]
  then
   echo "file backup is successful"
  else
   echo "file backup failed"
  fi
fi
