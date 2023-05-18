#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to pass command line parameters a functions in Linux"
echo 
###############################################################################

# Although functions use standard environment variables, 
# it cannot directly access  the script paramters values pass from the command line
# However, script parameters can be passed from the script to the function as shown below
# Run script like so:
# ./3b-passing-params-function.sh 10 20
# ./3b-passing-params-function.sh 10 20 23

function cmdline {
    echo $[ $1 * $2 ]
}

if [ $# -eq 2 ]
then 
    value=$(cmdline $1 $2)
    echo "Passing command line values to a function: $value"
else 
    echo " Usage of function is: cmdline a b"
fi