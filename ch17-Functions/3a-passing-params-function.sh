#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to pass parameters a functions in Linux"
echo 
###############################################################################

# Functions are treated as a mini-scripts of it own executed in a different shell once called
# You can  pass paramters to a function just like a regular script
# Functions can use standard parameter environment variables like: $#, $@, $1,$2,...$n as you would in a bash script
# Although functions use standard environment variables, it cannot directly access  the script paramters values pass from the command line

function addem {
    if [ $# -eq 0 ] || [ $# -gt 2 ]
    then
        echo -1 
    elif [ $# -eq 1 ]
    then 
        echo $[ $1 + $1 ] 
    else 
        echo $[ $1 + $2 ] 
    fi
}

echo -n "Adding 10 and 15: "
value=$(addem 10 15)
echo $value
echo
echo -n "Let's try doubling 10: "
value=$(addem 10)
echo $value
echo
echo -n "Finally try adding 3 numbers should throw an error: "
value=$(addem 10 15 20)
echo $value
echo

