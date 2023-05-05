#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to process command-line options using 'getopt' command"
echo 
######## 

# #####********
# NB: There is also a 'getopts', plural, command discussed in the next lesson
# *************

# SYNTAX
# getopt optstring parameters

# First list each command-line option letter you are going to 
# use in your script in the in the 'optstring'. THen place a colon, :,
# after each option that requires a value/argument and getopt parses 
# all input and params as required

# sample => getopt ab:cd -a -b BValue -cd test1 test2
# THe above means: get all option with the value where required
# a => option: -a
# b => option b with value: -b Bvalue
# c => option c: -c
# d => option d: -d

# Note that the order of the option do not matter
# and as such, no need to stick to a particular order of options

# Also you can pass the 'q' flag to the getopt command 
# With this flag, the script throws an error if an invalid option
# not defined in our getopt command is passed and stops script execution
# The 'q' flag ignores the error and allows the script execution to continue

# To get the paramters after the option we use the 'set' command in our script
# like this: 'set -- $(getopt -q ab:cd "$@")'

# Now run the script with this various commands to see the behaviour
# (1) ./5-1-getopt-command.sh -ac
# (2) ./5-1-getopt-command.sh -ace (scripts executes completely despite the invalid option 'd')
# (3) ./5-1-getopt-command.sh -c -d -b BValue -a test1 test2 (shows that order of option does not matter)
# (4) ./5-1-getopt-command.sh -c -d -b BValue -a "test1 test2" test3 (shows that 'getopt' does not now how  to deal with space in parameters)
# as it printed test1, test2 and test3 as seperate params instend of just: "test1 test2" and test3
# Soution to the last command is to  use the advance 'getopts', plural, command

# extracting commandline options and values
set -- $(getopt -q ab:cd "$@")

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
            echo "Found the -b option with parameter value $param"
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