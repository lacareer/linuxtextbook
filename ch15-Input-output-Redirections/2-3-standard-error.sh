#!/bin/bash

###############################################################################
echo 
echo "This scripts shows the standard error file descriptors, 2>, in Linux"
echo 
######## 

# The default error file description, standard error, is the screen/monitor
# The monitor is the default way to redirect error to the shell
#  You can also send error to a file as shown in the examples below

echo 
echo "Example-1: Error redirection from the monitor to a  file"
echo 

# bcs this file, badfile, does not exist the error is redirected to the monitor
ls -la badfile
echo

# bcs this file, badfile, does not exist the error is redirected to the a file
# it creates this file, test4, if it does not already exist
ls -la badfile 2> test4
echo
echo "check file test4 to see stderr"
echo

#  bcs this file(test and badfile) does not exist the error is redirected to the a file
# it creates this file, test5, if it does not already exist
# only the file "test2" exist so the output is sent to the screen
# while the stderr bcs the files "badfile" and "test"  does not exist the stderr is 
# sent to the file test5. THis file will contain 2 stderr bcs of the 2 files
ls -la test badfile test2 2> test5
echo
echo "check file test5 to see stderr"
echo

echo 
echo "Example-2: Error and data redirection from the monitor to seperate files"
echo 
# note that this files  do not exist(test, test3, and badfile)
# all stderr and stdout is sent to the files test6 and test7 respectively
ls -la test test2 test3 badfile 2> test6 1> test7
echo
echo "check files test6 and test7 to see both stdout and stderr respectively"
echo

echo 
echo "Example-3: Error and data redirection from the monitor to same file"
echo 

# note that this files  do not exist(test, test3, and badfile)
# note that &> mean send all stdout and stderr
# all stderr and stdout is sent to the files test6 and test7 respectively
ls -la test test2 test3 badfile &> test77
echo
echo "check file test77  to see both stdout and stderr in same file"
echo