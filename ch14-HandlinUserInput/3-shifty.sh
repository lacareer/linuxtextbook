#!/bin/bash

###############################################################################
echo 
echo "This scripts shows various example and notes accessing positional parameters"
echo 
########
# When you use the 'shift' command, it moves each params to the left one position by default
# You can change the defailt shift on one position by using the 'shift n'
# where n is the number to the left to shift
# Note that once a parameter is shifted, it id deleted and cannot be recovered
# so shifting: 'a b c d e f' will result in the below by default
# b c d e f
# c d e f
# d e f
# e f
#  f
# no more params left
#  Same logic applies with 'shift n'

# run script with: ./3-shifty.sh alpha beta charlie delta
echo "Using the default shift method"

count=1
while [ -n "$1" ]
do
    count=$[ $count + 1 ]
    shift
    echo "Parameter #$count = $1"
done

echo

# uncomment above code to run code below
# if you don't there will be no output bcs the shift
# command has shifted and deleted all the shifted params

echo "Shifting 2 places with shift command"

# num=1
# while [ -n "$1" ]
# do
#     num=$[ $num + 2 ]
#     shift 2
#     echo "Parameter #$num = $1"
# done

# echo