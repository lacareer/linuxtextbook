#!/bin/bash

##########################################################################################
echo 
echo "This scripts shows the using SED write and read, w and r, command in Linux"
echo 
##########################################################################################

# w, used by sed to write lines to a file

# syntax: [address]w filename

echo 
echo "Example-1: Using Sed write, w, command"
echo

# writes lines 1 and 2 in file data6.txt to test-write.txt
# creates test-write.txt if it does not exist
sed '1,2w test-write.txt' data6.txt 
echo 
echo

echo 
echo "Example-2: Using Sed write, w, command"
echo

# writes lines with string 'Bresnahan' in file data12.txt to Bresnahan.txt
# creates Bresnahan.txt if it does not exist
sed -n '/Bresnahan/w Bresnahan.txt' data12.txt 
echo 
echo

cat Bresnahan.txt
echo

echo 
echo "Example-3: Using Sed Read, r, command"
echo

# reads lines in file data-read.txt and writes them to data13.txt
# it writes, after reading from data-read.txt, after the 3rd line in data13.txt
# creates data13.txt if it does not exist
sed '3r data13.txt' data-read.txt 
echo 
echo

echo 
echo "Example-4: Using Sed Read, r, command"
echo

# reads lines in file data-read.txt and writes them to data13.txt
# it writes, after reading from data-read.txt, after the line that matches/contains 'number 2' in data13.txt
# creates data13.txt if it does not exist
sed '3r data13.txt' data-read.txt 
echo 
echo

echo 
echo "Example-5: Using Sed Read, r, command"
echo

# reads lines in file data-read.txt and writes them to data13.txt
# it /appends/writes, after reading from data-read.txt, to the end or after lst line of data-read.txt
# creates data13.txt if it does not exist
sed '$r data13.txt' data-read.txt 
echo 
echo 

echo 
echo "Example-5: Using Sed Read, r, command"
echo

# reads lines in data12.txt and
# it /appends/writes to list.std on the line that matches the string 'LIST'
# creates data13.txt if it does not exist
sed '/LIST/{
r data12.txt
d
}' list.std
echo 
echo