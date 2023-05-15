#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to redirect and log messages to screen with 'tee' command"
echo
###############################################################################

# The 'tee' command sends data from STDIN to STDOUT locations( a file and monitor screen)
# The 'tee' command uses a pipe 
# the pipe creates the file if it does not yet exist

date | tee tee-file-test
echo

# use the -a option to append to the file
# otherwise the content is overwritten each time you tee
# to the same file
who | tee tee-file-test
echo
cat tee-file-test #overwrites existing content
echo
date | tee -a tee-file-test
echo | tee -a tee-file-test
echo

echo
echo "This is line #1 of the file"  | tee -a tee-file-test 
echo | tee -a tee-file-test
echo "This is line #2 of the file"  | tee -a tee-file-test
echo | tee -a tee-file-test
echo "This is line #3 of the file"  | tee -a tee-file-test
echo | tee -a tee-file-test
echo

echo "Current file content:"
echo
cat tee-file-test
echo



