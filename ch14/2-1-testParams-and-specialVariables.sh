#!/bin/bash

###############################################################################
echo 
echo "This scripts shows various example and notes accessing positional parameters"
echo 
########
# Positional params are access as variables like below:
# position 0 => $0 or ${0} (gives you the script name prefixed with the path)
# position 1...9 => $1...$9 or ${1}-${9} (you can use any option)
# position 10...nth => ${10}....${nth} (can only use this option)
# '$#' variable contains the total number of command-line parameter
# '${!#}' variable contains the last command-line parameter
# '$*' treats all command-line parameter as a single
# '$@' treats all command-line parameter as individual paramters

# NOTE: run script with command: ./2-1-testParams-and-specialVariables.sh  to see that error is handled
# Hence we add error handling to make sure the variable is present b4 being used
# NOW run script with command: './2-1-testParams-and-specialVariables.sh 5' to see result
echo 
echo "For-loop Example-1: Pameter error handling"
echo 

if [ -n "$1" ]
then
    factorial=1

    for ((number = 1; number <= $1; number++))
    do 
        factorial=$[$factorial * $number]
    done 
    echo "The factorial of $1 is $factorial"
    echo
else
    echo "Please enter one command line parameter that's a number"
    echo
fi

echo 
echo "For-loop Example-2: Parameter error handling with special parameter variables"
echo 

# '$#' variable contains the total number of command-line parameter
# '${!#}' variable contains the last command-line parameter
# Run script with command: './2-1-testParams-and-specialVariables.sh 5 17'

echo "We have $# paramter/s"
echo

if [ $# -eq 1 ]
then
    echo "We have $# parameter and the value is: $1"
    echo
else
    echo "There was either no parameters passed or more than one was passed"
    echo
fi

# '${!#}' variable contains the last command-line parameter
# Run script with command: './2-1-testParams-and-specialVariables.sh 5' or './2-1-testParams-and-specialVariables.sh 5 17'
echo "The last command-line paramter is: ${!#}"
echo