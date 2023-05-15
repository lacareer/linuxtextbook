#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to create your custom redirections in scripts"
echo "and how  to close file descriptors"
echo
######## 

echo 
echo "Example-1: Creates and closes permanent(stdin in this case) redirections in Linux using 'exec' command"
echo "Scripts should throw an error because there is a command after closing the file descriptor"
echo 
# creates a custom redirect to file test17file
exec 3> test17file
# individuall redirecting line to location of custom file descriptor
echo "This is a test line of data" >&3
echo "">&3
# closes the file description
exec 3>&-

cat test17file
# You can't write to the file, test17file, after you close the file descriptor
# Any attempt to do so after closing the file descriptor throw an error
# You would have to reopen the file descriptor to be able to do so
# reopens the file descriptor
exec 3> test17file

# individuall redirecting line to location of custom file descriptor
echo "" >&3
echo "Overwrote the content of the file" >&3
echo "" >&3


