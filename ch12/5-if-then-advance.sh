#!/bin/bash

# ADVANCE IF-THEN CONSTRUCTS

# 1. Compound testing

#  syntax:
# [ condition1 ] && [ condition2 ]
# [ condition 1 ] || [ condition2 ]

echo ""

if [ -d $HOME ] && [ -w $HOME/newfile ]
then 
    echo "The file exist and you can write to it"
    echo ""
else
    echo "You cannot write to the file"
    echo ""
fi

echo ""

if [ -d $HOME ] || [ -w $HOME/newfile ]
then 
    echo "The file exist and you can write to it"
    echo ""
else
    echo "You cannot write to the file"
    echo ""
fi

echo ""

# 2. SINGLE PARENTHESIS()
# used to start a subshell and evaluates to true or false 
# using the exit code of zero and non-zero of the command passed
# to evaluate to true and false respectively like the basic "if" command
echo ""

#echoes the number of subshells running. Print zero bcs none is running
echo $BASH_SUBSHELL 
echo ""

# echoes the number of subshells running. Print 1 bcs the single parenthesis started a subshell
if ( echo $BASH_SUBSHELL )
then 
    echo "The subshell command executed successfully"
    echo ""
else
    echo "The subshell command executed unsuccessfully"
    echo ""
fi

# Subshell is started but only the else block is executed
# bcs the is no /etc.PASSWORD directory (actual directory is /etc/passwd)
if ( cat /etc/PASSWORD )
then 
    echo "The subshell command executed successfully"
    echo ""
else
    echo "The subshell command executed unsuccessfully"
    echo ""
fi
echo ""

# 3. DOUBLE PARENTHESIS(())
# used to calculate mathematical expressions

# val++   (post-increment)
# val--   (post-decrement)
# ++val   (pre-increment)
# --val   (pre-decrement)
# !       (logical negation)
# ~       (bitwise negation)
# **      (exponentiation)
# <<      (left bitwise shift)
# >>      (right bitwise shift)
# &       (bitwise boolean AND)
# |       (bitwise boolean OR)
# &&       (logical AND)
# ||       (logical OR)

val1=10

if (( $val1 ** 2 > 90 ))
then 
    (( val2 = $val1 ** 2 ))
    echo "The square of $val1 is $val2"
    echo "Which is greater than 90"
    echo ""
fi

echo ""


# 4. DOUBLE BRACKET [[]]
# used for string comparison

if [[ $BASH_VERSION == 5.* ]]
then 
    echo "You are using the Bash Shell version 5 series"
    echo ""
else 
    echo "Your Bash Shell version is $BASH_VERSION"
    echo ""
fi