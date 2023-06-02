#!/bin/bash

###############################################################################
echo 
echo "This scripts shows usage of Regex in Reading Directories"
echo 
###############################################################################

# Note that some directory may not be accessible without root access

mypath=$(echo $PATH | sed 's/:/  /g')

count=0
for directory in $mypath 
do 
    check=$(ls $directory)
    for item in $check 
    do 
        count=$[ $count +1 ]
    done

    echo 
    echo "$directory - $count"
    echo 
    count=0
done