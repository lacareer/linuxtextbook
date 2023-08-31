#!/bin/bash

# These script contains intro to math function in bash
# See pages 289-300 of textbook for various functions and explanations

# **** Method 1: using the "expr" for maths operations" - a clunky approach
echo 
echo -n "1 + 5 is: "
expr 1 + 5

# note that you have to escape the * sign for multiplication when using "expr" for math
echo
echo -n "2 * 5 is: "
expr 2 \* 5

var1=10
var2=20
var3=$(expr $var2 / $var1)
echo
echo "The result of 20/10 is: $var3"
echo

# **** Method 2: using the "[]" for maths operations" - the best approach

var1=$[1 + 5]
echo $var1
echo

var2=$[$var1 * 2]
echo $var2
echo

var3=45
var4=$[$var1 * ($var2 - $var1)]
echo "The final result is:" $var4
echo

var5=$[$var4 / $var1]
echo "The result of 36/6 + 1 is:" $[$var5 + 1]
echo

#**** Floating numbers are handled with bash calculator - bc***

# syntax: variable=$(echo "options; expression" | bc)
# You can use the options param to set the decimal places for the calculation and maybe any other variable delimited by colon - ;
# You can enter "bc" to start and use the calculator on command line. Use the -q, quiet, flag to use calculator without displaying calculator info

# method 1: Good for short calculations

var1=$(echo "scale=4; 3.44 / 5" | bc)
echo The result of 3.44/5 is: $var1
echo

var1=100
var2=45
var3=$(echo "scale=4;$var1 / $var2" | bc)
echo The answer for 100/45 is: $var3

# method 2: bc inline method  for complex calculations

var1=10.46
var2=43.67
var3=33.2
var4=71

# note that all variables defined inline using are only aaccessible within the bc function below
# variables defines and used within the function can have space on both side of = as show below
# and getting variable value dwclared with the  fuction does not use $  sign as shown below
# Variables defined outside the function can be accessed the usual way as shown below
# The last line, value of a1 + b1, is returned

var5=$(bc << EOF 
scale = 4
a1 = ($var1 + $var2)
b1 = ($var3 + $var4)
a1 + b1
EOF
)

echo
echo This result of this mess is: $var5
echo














