#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to create local temporary files"
echo "THis can be  done using the mktemp command"
echo
###############################################################################

# The /temp directory is used for storing temporary files in linux
# Most Linux distribution remove any file in the /tmp directory at bootup
# This is a self-cleaning capabilities that great for sys-admins
# Any user account on the system has permission to read and write to the /tmp directory

# Temporary files can be created using the mktemp command
# When done, this assigns the read and write permission to the file 
# and make the user creating the file the owner
# Other than the root user, root, no one else can access this file

# syntax: note that the capital X are literal
# The X are are replaced with 6 character codes  to make sure the file is uniques
# This codes changes everytime your run the scripts
# Also when the command executes successfully, 
# the name of the newly created file/s is/are output  to stdout/monitor
# mktemp fileName.XXXXXX

echo
count=0

while [ $count -lt 5 ]
do 
    mktemp testing.XXXXXX 
    count=$[ $count + 1 ]
done
# listing the 5 temp files created above
ls -la testing.*
echo

# removing files
if (rm testing.*)
then
    echo "Successfully removed  files"
else 
    echo "Could not remove the temporary files"
fi
echo

