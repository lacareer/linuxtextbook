#!/bin/bash

###############################################################################
echo 
echo "This scripts shows various example and notes on loop control"
echo "Using the 'break' and 'continue' commands "
echo 
###############################################################################

echo 
echo "Nested loop Example-1a:  Breaking out of an outer loop"
echo 

# 'break' command is used to exit any kind of loop in progress
# You can break out of a single or  nested loop

# stops print value at 5 (instead of 1-10) because of the 'break' command
for number in 1 2 3 4 5 6 7 8 9 10
do
    echo "The number is current: $number"

    if [ $number -eq 5 ]
    then
        echo "Breaking out of the outer loop bcs $number = 5"
        break
    fi
done
echo "The loop has completed"
echo

echo 
echo "Nested loop Example-1a:  Breaking out of an outer loop"
echo 

var1=1

while [ $var1 -lt 10 ]
do
    echo "The number is current: $var1"

    if [ $var1 -gt 4 ]
    then
        echo "Breaking out of the outer loop bcs $var > 4"
        break
    fi
    var1=$[ $var1 + 1 ]
done
echo "The loop has completed"
echo

echo 
echo "Nested loop Example-2a:  Breaking out of an inner loop"
echo 

for (( a = 1; a < 4; a++ ))
do 
    echo
    echo "Current outer loop value: $a"
    echo "Now printing out loop values"
    for (( b = 1; b < 1000; b++ ))
    do 
        echo "Current inner loop value: $b"
        if [ $b -eq 2 ]
        then
            echo "Breaking out of the inner bcs loop bcs $b = 2"
            break 
        fi       
    done
done

echo 
echo "Nested loop Example-2a: Breaking outter loops from inner loops using the n=2 flag"
echo 
# breaking outter loops from inner loops using the n flag in 'break n'
# 'n' indicates the level of loop to break out from counting from where the 'break n' is used
# by default n = 1
# 

for number in 1 2 3 4 5 6 7 8 9 10
do
    echo "The number is current: $number"

    if [ $number -eq 3 ]
    then
        echo "Breaking out of the outer loop bcs $number = 5"
        break 2 # stops the out loop
    fi
done

echo 
echo "Nested loop Example-2b: Breaking outter loops from inner loops using the n=3 flag"
echo 

for number in 1 2 3 4 5 6 7 8 9 10
do
    echo "The number is current: $number"
    num=5
    while [ $num -gt 0 ]
    do
        echo "Current num value is: $num"
        if [ $num -eq 4 ]
        then
            echo "Breaking out of the outer loop bcs $num = 4"
            break 3 # stops the out loop
        fi
        num=$[ $num - 1 ]
    done
done