#!/bin/bash

#** The "test" command can be used for testing numbers and strings as shown below

# *** NUMERIC COMPARISONS ***
# n1 -eq n2 (checks if n1 == n2)
# n1 -ge n2 (checks if n1 >= n2)
# n1 -le n2 (checks if n1 <= n2)
# n1 -lt n2 (checks if n1 < n2)
# n1 -gt n2 (checks if n1 > n2)
# n1 -ne n2 (checks if n1 != n2)

# *** STRING COMPARISON ***
# str1 = str2 (checks if str1 == str2)
# str1 != str2 (checks if str1 !== str2)
# str1 < str2 (checks if str1 < str2)
# str1 > str2 (checks if str1 > str2)
#  -n str1  (checks if str1 has a length greater than 0)
#  -z str1  (checks if str1 has a length is 0)



# COndition for if-else can be tested using one of two methods
# Using the keyword "test" or square bracket, [] 
# it is exactly like if-else's 
# but intead test for a condition (TRUE/FALSE) instead of a command(zero or non-zero exit status)
# Note that the test keyword must be accompanied by a condition
# Otherwise it throws a non-zero exit status like the if statements we considered b4 now

# Syntax
# mthod 1.
#       if test condition
#       then
#           commands
#       fi

# method 2.
#       if [condition]
#       then
#           commands
#       fi

#***** EXAMPLES ********

# Method 1.
# should throw an error bcs there is no accompanying 
# condition after the the keyword "test"
echo "Example 1"
echo ""

if test
then    
    echo "This 'test' command was successfuly"
else
    echo "This 'test' command failed because no condition was provided"
fi

echo ""
echo "Example 2"
echo ""

myvariable="Full"
# myvariable=""

if test $myvariable
then    
    echo "This variable has content and returns TRUE"
    echo "The variable content is '$myvariable'"

else
    echo "The variable is not defined and returns FALSE"
fi

echo ""
echo "Example 3"
echo ""

# Method 2.
# Always make sure there is space between the condition and bracket
# on both side of the condition in the bracket

myvariable=""

if [ $myvariable ]
then    
    echo "This variable has content and returns TRUE"
    echo "The variable content is '$myvariable'"

else
    echo "The variable is not defined and returns FALSE"
    echo "The content of the variable $myvariable is empty"
fi

echo ""
echo "Example 4: numeric comparison"
echo ""

value1=10
value2=11

if [ $value1 -gt 5 ]
then
    echo "The test  value1 $value1 is greate than the value 5"
fi

echo ""

if [ $value1 -eq $value2 ]
then
    echo "The test $value1 is equal to test value $value2"
else
    echo "The test $value1 is not equa to the test value $value2"
fi

echo ""
echo "Example 5: string comparison"
echo ""

myuser=christine

if [ $myuser = christine ]
then
    echo "The user variable contains the string: christine"
else
    echo "The user variable contains the string: $myuser"
fi

echo ""
echo "Example 6: string comparison"
echo ""

if [ $myuser != christine ]
then
    echo "The user variable contains the string: $myuser"
else
    echo "The user variable contains the string: christine"
fi