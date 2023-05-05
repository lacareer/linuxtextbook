#!/bin/bash

###############################################################################
echo 
echo "This scripts shows various example and notes about how to process command-line options"
echo 
######## 

# Command-line option are passed like parameters but with a '-' as a prefix
# You can extract the command-line options using a case statement
# the order of the options do not matter.
# Run script with these  commands to demostrate the above'
# './4-1-commandline-options.sh -a -b -c -d' or
# './4-1-commandline-options.sh -d -a -b -c '

# shift here oprates in the normal way by shifting each option to the left
# and deleting the current first option
while [ -n "$1" ]
do
    case "$1" in
        -a) echo "Found the -a option";;
        -b) echo "Found the -b option";;
        -c) echo "Found the -c option";;
        *) echo "$1 is  not an option";;
    esac
    shift
done

echo
exit