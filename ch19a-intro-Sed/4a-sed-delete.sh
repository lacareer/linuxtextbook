#!/bin/bash

##########################################################################################
echo 
echo "This scripts shows the basic commands using SED delete option in Linux"
echo 
##########################################################################################

echo 
echo "Example-1: Delete 3rd line in stdout"
echo 

# deletes 3rd line in file
sed '3d' data6.txt
echo 
echo

echo 
echo "Example-2: Delete 2nd and 3rd line in stdout"
echo 
# deletes 2nd and 3rd line in a file
sed '2,3d' data6.txt
echo 
echo

echo 
echo "Example-3: Delete 2nd line to end in stdout"
echo 
# deletes 2nd to end of line in a file
sed '2,$d' data6.txt
echo 
echo

echo 
echo "Example-4: Delete line with matching string in stdout"
echo 

# uses pattern matching to delete the line with a match, 'number 1'
sed '/number 1/d' data6.txt
echo 
echo

echo 
echo "Example-5: Deletes line 1-3 inclusive of start amd end point"
echo 

# the delete feature is turn on from line containing '1' and is turn off after line containing '3'
sed '/1/,/3/d' data6.txt
echo 
echo

echo 
echo "Example-6: Deletes line 1-3, and 5-end, inclusive of point lines"
echo 
# the delete feature is turn on from line containing '1' and is turn off after line containing '3'
# however, line 5 also contains a matching string, '1', which turns on the delete feature
# and it does not have a matching closing string which deletes make it delete all lines from 5 to end
sed '/1/,/3/d' data7.txt
echo 
echo

echo 
echo "Example-7: Deletes line 3-end inclusive of point lines"
echo 

# the delete feature is turn on from line containing '3' and is not turn off
# bcs there is  no match, '5', to turn off the delete feature
sed '/3/,/5/d' data7.txt
echo 
echo