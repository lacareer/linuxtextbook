#!/bin/bash

##########################################################################################
echo 
echo "This scripts shows the usage of SED numeric address in Linux"
echo 
##########################################################################################

# There are 2 line of addressing in sed editor
# 1. A numeric range of lines
# 2. A text pattern that matches text within a line

# syntax : [address]command

# You can also group more than one command as shown below
# address {
#     command1
#     command2
#     command3
# }
# THe sed editor applies each of the commands you 
# specify only to lins that match the address specified

echo 
echo "Example-1: SED numeric address in Linux"
echo 
# changes the occurence of the word 'dog' to 'cat' only on line 2
sed '2s/dog/cat/' data1.txt
echo
echo

echo 
echo "Example-2: SED numeric address in Linux"
echo 

# changes the occurence of the word 'dog' to 'cat' only on line 2 and 3
sed '2,3s/dog/cat/' data1.txt
echo
echo

echo 
echo "Example-3: SED numeric address in Linux"
echo 
# changes the occurence of the word 'dog' to 'cat' on line 2 to end of last line
# comes in handy when you don't know how many lines there is
sed '2,$s/dog/cat/' data1.txt
echo
echo

echo 
echo "Example-4: SED numeric address grouping in Linux"
echo 

sed '3,$s/dog/cat/; 3,$s/brown/red/' data1.txt 
echo
echo

echo 
echo "Example-5: SED numeric address grouping in Linux"
echo 

# substitutes words using the file
sed -f pattern.sed data1.txt 
echo
echo