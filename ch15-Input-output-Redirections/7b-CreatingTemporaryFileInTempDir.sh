#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to create temporary files in /tmp"
echo "This can be  done using the 'mktemp -t filename.XXXXXX' command"
echo "Here we create a temporary file in /tmp that is used for a custom file descriptor"
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
# the absolute/full path of the newly created file file/s is/are output to stdout/monitor
# mktemp fileNAme.XXXXXX

# creating a temp file in the linux /tmp  directory
# To do so, you must pass the -t option when creating the file
# Note that when you pass the -t option, the mktemp
# command returns the absolute/full path of the newly created file
testtempfile=$(mktemp -t testtempfile.XXXXXX) 
# prints new temp file absolute path
echo "$testtempfile"
echo

# Creating a custom file descriptor for redirection to testtemp file
exec 3>$testtempfile

echo "This script writes to a temp file called $testtempfile"
# redirects this lines to the temp file
echo "This is line #1" >&3
echo "This is line #2" >&3
echo "This is line #3" >&3
# closing file descriptor
exec 3>&-
echo

echo "Done creating temp file. The contents are:"
echo
cat $testtempfile
echo
# removing temp file
rm -f $testtempfile 2> /dev/null

# confirming file is remove and notifying user of the script
if [ -e $testtempfile ]
then 
    echo "$testtempfile was not removed"
else
    echo "$testtempfile successfullly removed"
fi
echo
