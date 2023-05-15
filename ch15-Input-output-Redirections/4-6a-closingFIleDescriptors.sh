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

echo "This is a test line of data" >&3
echo
# closes the file description
exec 3>&-

# You can't write to the file, test17file, after you close the file descriptor
# Any attempt to do so after closing the file descriptor throw an error
# You would have to reopen the file descriptor to be able to do so
echo "This won't work and causes an error" >&3
echo