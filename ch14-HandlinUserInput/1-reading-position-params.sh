#!/bin/bash

###############################################################################
echo 
echo "This scripts shows various example and notes accessing positional parameters"
echo 
########

# NOTE: run script with command: ./1-reading-position-params.sh 5 5 "Jim Christie"
# This is because the is no error handling yet in this script and avoids error

# Positional params are access as variables like below:
# position 0 => $0 or ${0} (gives you the script name prefixed with the path)
# position 1...9 => $1...$9 or ${1}-${9} (you can use any option)
# position 10...nth => ${10}....${nth} (can only use this option)

echo 
echo "For-loop Example-1"
echo 

factorial=1

for ((number = 1; number <= $1; number++))
do 
    factorial=$[$factorial * $number]
done 

echo "The factorial of $1 is $factorial"
echo

echo 
echo "For-loop Example-2"
echo 

echo "The first parameter passed is $1"
echo "The second parameter passed is $2"
echo "The product of $1 and $2 is: "$[ $1 * $2 ]

echo 
echo "For-loop Example-3"
echo 

echo "Hello $3, nice to meet you"
echo -n "Printing \$1..\$3: "
echo ${1} ${2} ${3}

echo 
echo "For-loop Example-4: Reading Script name"
echo 

# gives script name with path
echo "Script name with path using \$0s: "$0
echo
echo "Best method to get script name is \$(basename \$0): " $(basename $0)
echo