#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how to list default and custom file descriptors"
echo
###############################################################################

# command: /usr/sbin/lsof
# Below are the options and their descriptions:
# -p => allows you to specify the pid number
# -d => allows you to specify file descriptor number
# -a => allows you to perform a boolean AND of -p and -d

# displays default file descriptors 0,1, and 2 to the screen
/usr/sbin/lsof -a -p $$ -d 0,1,2
echo
echo

exec 3> test18file1
exec 6> test18file2
exec 7< testfile 
# displays default file descriptors 0,1,2,3,6,and 7 to the screen
# Note that the default descriptor has type CHR and custom has REG
/usr/sbin/lsof -a -p $$ -d 0,1,2,3,6,7
echo
echo



