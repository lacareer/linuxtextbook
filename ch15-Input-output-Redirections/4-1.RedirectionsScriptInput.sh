#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to redirect inputs in scripts"
echo
######## 

# creates permanent redirection stdin
# reads the content from a file instead of the keyboard
exec 0< testfile
count=1

while read line
do 
    echo "Line #$count: $line"
    count=$[ $count + 1 ]
    echo
done
echo