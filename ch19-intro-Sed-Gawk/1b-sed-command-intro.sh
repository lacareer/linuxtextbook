#!/bin/bash

##########################################################################################
echo 
echo "This scripts shows the basic commands using SED editor and command options in Linux"
echo 
##########################################################################################

echo 
echo "Example-1: Command line sed usage"
echo 
# replaces or substitute 'big test' for 'test'
echo "This is a test" | sed 's/test/big test/'
echo

echo 
echo "Example-2: Command line sed usagewith file input"
echo 
# replaces or substitute 'cat' for 'dog'
# note that it does not change the actual file content
sed 's/dog/cat/' data1.txt
echo
echo

echo 
echo "Example-3: Command line sed usage with multiple commands"
echo 

# replaces or substitute 'hippo' for 'dog' and 'red' for 'brown'
# note that it does not change the actual file content
# And make sure there isn't any space betwen '/' and ';' in all commands but the last
# where there are multiple commands as shown below
sed -e 's/dog/hippo/; s/brown/red/' data1.txt
echo
echo
# COMMAND LINE MULTIPLE SED COMMANDS ABOVE. THE FILE MUST COME AFTER THE LAST COMMAND
# sed -e '
# > s/dog/hippo/
# > s/brown/red/' data1.txt

echo 
echo "Example-4: Command line sed usage with multiple commands from a file"
echo 
# reads sed scripts from a file
sed -f script1.sed data1.txt
echo
echo
