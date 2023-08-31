#!/bin/bash

###############################################################################
echo 
echo "This scripts shows various example and notes about how to process command-line options"
echo 
######## 

# Command-line option are passed like parameters but with a '-' as a prefix
# You can seperate the command-line options and the parameters using a case statement
# You can do so using the '--' flag. Command-line uses the '--' to indicate end of option list
# Run script with commands below to demonstrate the above'

# OPTION 1

# Without '--' treats the parameters as option because it does not know where the parameter list stops
# This produces the wrong result
# ./4-2-seperate-options-and-paramters.sh -a -b -c test1 test2 test3'

# OPTION 2

# Breaks out of the loop once it encounters the '--' flag 
# and treats anything afterward as a parameter
# THis produces the right result
# using command to demontrate it => ./4-2-seperate-options-and-paramters.sh -a -b -c -- test1 test2 test3 '

# shift here operates in the normal way by shifting each option to the left
# and deleting the current first option
while [ -n "$1" ]
do
    case "$1" in
        -a) 
            echo "Found the -a option";;
        -b) 
            echo "Found the -b option";;
        -c) 
            echo "Found the -c option";;
        --) 
            echo $@
            shift #shift the -- flag
            echo $@
            break;; # breaks  out of the loop so only paramters are left unshifted
        *) 
            echo "$1 is  not an option";;
    esac
    shift # shifts options to the left
done

echo

count=1
for param in "$@"
do
    echo "Parameter #$count: $param"
    count=$[ $count + 1 ]
done

echo
exit