#!/bin/bash

###############################################################################
echo 
echo "This scripts shows various example and notes about how to process command-line options"
echo 
######## 

# Command-line option are passed like parameters but with a '-' as a prefix
# You can seperate the command-line options and the parameters using a case statement
# You can do so using the '--' flag. Command-line uses the '--' to indicate end of option list
# Run script with commands below to demostrate the above'

# OPTION 1
# Without breaks out of the loop once it encounters the '--' flag 
# and treats anything afterward as a parameter
# THis produces the right result
# using command to demontrate it => ./4-3-options-with-paramters-values.sh -a -b BValue -d'

# OPTION 2
# Using this method to grab options and parameter does not allow 
# you to combine option, like ./scriptname -ac test
# To achive that we use the 'getopt' command discussed in the next lession
# run command to see deficiency: ./4-3-options-with-paramters-values.sh -ab BValue -d 


# shift here oprates in the normal way by shifting each option to the left
# and deleting the current first option
while [ -n "$1" ]
do
    case "$1" in
        -a) 
            echo "Found the -a option";;
        -b) 
            #definitely occupies the 2nd position after being shifted to position 1
            # This will be the value of -b option
            param=$2 
            echo "Found the -b option with parameter value '$param'"
            #shifts the -b option value to 1st position to shifted by the last shift b4 the done keyword
            shift;; 
        -c) 
            echo "Found the -c option";;
        --) 
            shift #shift the last option
            break;; # breks  out of the loop so only paramters are left unshifted
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