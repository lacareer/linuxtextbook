#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to process command-line options using 'getopts' command"
echo 
######## 

# #####********
# NB: There is also a 'getopt', singular, command discussed in the previous lesson
# *************

# SYNTAX
# getopts optstring parameters

# NOTE THAT THE 'getopts' command processes each option one by one even when combined
# like: '-abc 'intead of '-a -b -c'
# Which means the above will have 3 processes - one each for a, b, and c respectively
# This is important to understand and use OPTIND

# First list each command-line option letter you are going to 
# use in your script in the in the 'optstring'. THen place a colon, :,
# after each option that requires a value/argument and getopt parses 
# all input and params as required

# sample => getopts :ab:cd -a -b BValue -cd test1 test2
# THe above means: get all option with the value where required
# : => ignores all options passed that are invalid instead of throwing an error and
# stopping script execution(like 'q' in getopt)
# a => option: -a
# b => option b with value: -b Bvalue
# c => option c: -c
# d => option d: -d

# Note that the order of the option do not matter
# and as such, no need to stick to a particular order of options

# Also note that the 'getopts' command strip the '-' prefix 
# of each option off. So, no need to use it in your case statement as show below

# gets option uses the following environment variables
# OPTARG => contains the value to be used if an option requires a value
# OPTIND => contains value of current location with the parameter list  where getopts left off
# The OPTIND lets you to continue processing othe commandline paramsters after you finish the options
# As the getopts processes each option, it increments OPTIND environment variable by 1
# When the getopts reaches the end of the option processing, you can use the OPTIND with 
# shift command to to ove to the paramters, i.e shift/delete all options using OPTIND value

# Rin script with commands
# (1) ./5-2-advance-getopt-command.sh -ab BValue -c (shows operation like 'getopt')
# (2) ./5-2-advance-getopt-command.sh -b "BValue1 BValue2" -a (unlike 'getopt', getopts accomodates spaces between a single parameter)
# (3) ./5-2-advance-getopt-command.sh -abBValue1 (can squish options and param as  shown)
# (4) ./5-2-advance-getopt-command.sh -e (shows that the ':' that preceed the list of options in getopts command ignores invalid options)
# when an invalid option is passed, it is represented/replaced with a question mark, '?'
# (5) ./5-2-advance-getopt-command.sh -db BValue1 -e test1 test2 (same as 4 above)


while getopts :ab:cd opt
do
    case "$opt" in
        a) 
            echo "Found the -a option";;
        b) 
            echo "Found the -b option with parameter value '$OPTARG'";;
        c) 
            echo "Found the -c option";;
        d) 
            echo "Found the -d option";;
        *) 
            echo "Unknown option: $opt";;
    esac
done

echo
echo "This is  current \$OPTIND value: $OPTIND"
echo

# -1 bcs the current position, OPTIND, when getopts completes processing all options
# will be at position of test1, which is 4 as explained below
# -db BValue1 -e test1 test2
#  12          3  4
# and we need to shift all option before it (excluding test1), hence the -1
shift $[ $OPTIND - 1 ]

count=1
for param in "$@"
do
    echo "Parameter #$count: $param"
    count=$[ $count + 1 ]
done

echo
exit