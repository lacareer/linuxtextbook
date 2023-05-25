#!/bin/bash

##########################################################################################
echo 
echo "This scripts shows the basic commands using SED editor and command options in Linux"
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
echo "Example-5: Deletes line 1-3 inclusive of point lines"
echo 

# uses pattern matching to delete the line with a match, 'number 1'
sed '/1/,/3/d' data6.txt
echo 
echo

echo 
echo "Example-6: Deletes line 1-3 inclusive of point lines"
echo 

# uses pattern matching to delete the line with a match, 'number 1'
sed '/1/,/3/d' data7.txt
echo 
echo