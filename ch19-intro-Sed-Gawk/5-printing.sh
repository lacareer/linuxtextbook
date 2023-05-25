#!/bin/bash

##########################################################################################
echo 
echo "This scripts shows the basic commands using SED change and transform editor in Linux"
echo 
##########################################################################################

# p, prints a text line
# =, prints line number
# l, list lines

echo 
echo "Example-1: Using Sed print, p, command"
echo 

# prints the line to stdout in addition to echo print to stdout
# -n suppress the echo printout. Without it the will be 2 lines of text
echo "This is a test." | sed -n 'p'
echo 
echo 


echo 
echo "Example-2: Using Sed print, p, command"
echo 

# prints the matching test line to stdout
sed -n '/3rd line/p' data6.txt
echo 
echo 

echo 
echo "Example-2: Using Sed print, p, command"
echo 

# prints only line 2 and 3 to stdout
sed -n '2,3p' data6.txt
echo 
echo 

echo 
echo "Example-3: Using Sed print, p, command"
echo 

# prints line b4 it is altered and after being altered
sed -n '/3\
p
s
/line/test
p/' data6.txt
echo 
echo 

echo 
echo "Example-4: Using Sed print, p, command"
echo 

# prints line numbers along with file content
sed '=' data1.txt
echo 
echo 

