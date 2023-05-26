#!/bin/bash

##########################################################################################
echo 
echo "This scripts shows the usage of SED substitution flags command options in Linux"
echo 
##########################################################################################

# Synatx
# s/pattern/replacement/flags

# FOUR TYPES OF SED SUBSTITUTION FLAGS
# 1. A number, indicating the pattern occurence for which new text should be substituted
# 2. g, indicating that the new text should be substituted for all occurences of the existing text
# 3. p, indicating that hthe new content of the original line should bbe printed
# 4. w file, which means to write hthe resultof the substitution to a file


echo 
echo "Example-1: sed substition, s, command default"
echo 

# the sed substitution flag, s, only replaces the first occurence of the test to be substituted
# as shown in this example
# Only the first occurence of the word 'test' was replaced
sed 's/test/trial/' data4.txt
echo 
echo

echo 
echo "Example-2: sed number substition flag"
echo 

# Only the second occurence of the word 'test' was replaced
sed 's/test/trial/2' data4.txt
echo 
echo

echo 
echo "Example-3: sed 'g' substition flag"
echo 

# All occurences of the word 'test' was replaced
sed 's/test/trial/g' data4.txt
echo 
echo

echo 
echo "Example-4: sed 'p' substition flag"
echo 

# Prints, p, only the line/s that contains the matching string
# -n suppresses all other data contained in the file from being 
# printed to the screen
sed -n 's/test/trial/p' data5.txt
echo 
echo

echo 
echo "Example-5: sed 'w' substition flag"
echo 

# Only the first occurences of the word 'test' was replaced and writes it to a file
# creates the file if it does not exist
sed 's/test/trial/w test.txt' data4.txt
echo 
echo

echo 
echo "Example-6: sed 'wg' substition flag"
echo 

# First replaces all occurences of the word 'test' was replaced and writes it to a file
# creates the file if it does not exist
sed -e 's/test/trial/gw test.txt' data4.txt
echo 
echo

echo 
echo "Example 7: sed replacing special characters"
echo

# use back slashes, '\' to e escape a string with '/'
# sed allows you to use '!' in place of the usual '/' 
# as shown below where you have special characters

echo 
echo "Example-8: sed '\' escape charaters"
echo 

# uses '\' to escape the special charater '/' in the text files
sed 's/\/bin\/sh/\/bin\/zssh/' shells.txt
echo 
echo

echo 
echo "Example-9: sed '!' escape charaters"
echo 

# uses '!' to escape the special charater '/' in the word '/test/'
echo "/test/ my legs" | sed 's!/test/!/trial/!'
echo 
echo

echo 
echo "Example-10: sed '!' escape charaters"
echo 
# replaces all occurence of '/bin/sh' in file shells.txt
sed 's!/bin/sh!/bin/zssh!' shells.txt
echo 
echo