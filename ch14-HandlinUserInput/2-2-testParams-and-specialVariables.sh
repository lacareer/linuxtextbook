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

# Run script with command: './2-2-testParams-and-specialVariables.sh alpha beta charlie delta'

# '${!#}' variable contains the last command-line parameter
echo "The last command-line paramter is: ${!#}"
echo

echo "We have $# paramter/s"
echo

if [ "$#" -gt 0 ]
then
    echo "We have a total of $# parameters"
    echo
else
    echo "There was no parameters passed"
    echo
fi

# $* treats all command-line params as one paramter
echo "The value of \$* treat all input as one params and as such can not be iterated through"
echo "The value of \$* is $*"
echo

# $@ treats all command-line params as one paramter
echo "The value of \$@ treat all input as one params and can be iterated through"
echo "The value of \$* is $@"
echo

# treats the params as a single passed params
echo "Print collectivevariables of \$*"
count=1
for param in "$*"
do
    echo "Print parameter in position $count: $param"
    echo
    count=$[ $count + 1]
done

# treats the params as individual passed params
echo "Print individual variables of \$@"
count=1
for param in "$@"
do
    echo "Print parameter in position $count: $param"
    echo
    count=$[ $count + 1]
done