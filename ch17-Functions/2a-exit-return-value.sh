#!/bin/bash

###############################################################################
echo 
echo "This scripts shows the default return value of a functions in Linux"
echo 
###############################################################################

# The default exit status of a function is the 'exit status' of the last command 
# in the function
# After the function executes, you can use the standard '$?' variable to determine the 
# exit status of the function

function func1 {
    echo "Trying  to display a non-existent file"
    echo
    #file does not exit and should return an exit code greater than 0 (error)
    # bcs it is the last command of the  function
    ls -l badfile 
}
echo
# calling function and should return non-zero exit code
func1
echo -n "The exit code of above function is: " $?
echo
echo

# function shows the limitation of using the default exit return value
function func2 {
    # throws and error but des not affect the exit code of the function
    # bcs it is not the last command in the function
    ls -l badfile 

    echo "Trying  to display a non-existent file"
    echo
}
echo
# calling function and should return non-zero exit code
func2
echo -n "The exit code of above function is: " $?
echo
echo
