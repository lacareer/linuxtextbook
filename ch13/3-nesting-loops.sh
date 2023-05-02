#!/bin/bash

###############################################################################
echo 
echo "This scripts shows various example and notes nested loops"
echo 
###############################################################################

echo 
echo "Nested loop Example-1:  nested for-loop"
echo 

for (( a = 1; a <= 3; a++ ))
do 
    echo
    echo "Current outer loop value: $a"
    echo "Now printing out loop values"
    for (( b = 1; b <= 3; b++ ))
    do 
        echo "Current inner loop value: $b"
        
    done
done 

echo 
echo "Nested loop Example-2:  nested while and for-loop"
echo 
echo

var1=3

while [ $var1 -ge 0 ]
do 
    echo
    echo "Current outer loop value: $var1"
    echo "Now printing out loop values"
    for (( b = 1; b < 3; b++ ))
    do 
        echo "Current inner loop value: $b"
        
    done

    var1=$[ $var1 - 1 ]
done 

echo 
echo "For-loop Example-3:  nested loop reading from a file"
echo 
echo

oldIFS=$IFS # SAVES DEFAULT IFS: Use for resetting
IFS=$'\n' # SETTTING OUR PREFERENCE TO USE FROM DEFAULT IFS

for line in $(cat /home/centos-docker-host/Desktop/linuxtextbook/ch13/passwd.txt)
do
    echo
    echo "Line value is: "$line
    echo "Print contents of each line delimited by colon below:\\n"

    IFS=":"

    for entry in $line
    do
        echo $entry
    done
done

oldIFS=$IFS #resets IFS back to deafult