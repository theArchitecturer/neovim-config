#!/bin/bash

file=$(basename $1 .cpp)
#echo "$file" 
g++ $1 -o $file

if [ -f $file ]; then
    ./$file < input.txt > output.txt
else 
    echo "File not found"
fi
