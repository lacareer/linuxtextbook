#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to create your custom redirections in scripts"
echo "and how  to redirect file decriptors from one to the other or reset to default"
echo
######## 

# create a custom, 3>, stdout file descriptors that
# reads output from another file descriptor, 1>, 
# that stores stdout in the file test14out
# Logic: send stdout to test14out and the redirect the file content to 3>
# "cat test14out" to see the first 4 echo statements
exec 3>&1
exec 1>test14out

echo
echo "This should be stored in an output file"
echo "along with this line"
echo

# Logic: now send all the stdout in 3> (which contains the echo statements above)
# back to 1> which displays on the monitor
# which is the default output of the stdout
# The last echo statements should now be displayed on the monitor, not redirected to test14out
# because we have reset the file descriptor back to the default
exec 1>&3 #reset stdout to default
echo "Now things should be back to normal"
echo
