#!/bin/bash
echo -n "Please enter the file path:"
read path
if [ -e $path ]
then 
 echo "File $i exits in the host"
else
 echo "File $i doesn't exist"
fi
