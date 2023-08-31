#!/bin/bash

###############################################################################
echo 
echo "This scripts shows how suppress out using /dev/null"
echo
###############################################################################

# The /dev/null file contains nothing always
# Sometimes you may what to run a script in the background and 
# not display the stdin, stdout or stderr, to the screen
# THe solution is redirecting to the null file which is thrown away
# and hence always contains nothing
# You cannot retrieve anything sent to null file

# redirects output of command to null file
# and shows this files is always empty
ls -la > /dev/null
cat /dev/null

# suppressing error from a script
# note that badfile does not exist and throws an error
# And shows the content is always empty
ls -la badfile testfile 2> /dev/null
cat /dev/null

# adds content to file which it creates if it does not exist
echo "This content is now in testDevNull" > testDevNull
echo
cat testDevNull
echo 

# empting a file content using the /dev/null
# testDevNull should now be empty
cat /dev/null > testDevNull
echo "testDevNull is now empty"
cat testDevNull
echo