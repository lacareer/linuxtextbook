#!/bin/bash

###############################################################################
echo 
echo "This scripts shows various example and notes regarding while-loop and until-loops"
echo 
###############################################################################


###### WHILE LOOP
## syntax

# while test command
# do
#     commands
# done
echo 
echo "For-loop Example-1a:  basic while loop"
echo 
var1=5

while [ $var1 -gt 0 ]
do
    echo "Reducing the value of $var1 by 1"
    var1=$[ $var1 - 1 ]
    echo "Current value of var1 is: $var1"
    echo
done

echo 
echo "For-loop Example-1b: while loop with multiple conditions"
echo 
var2=5

# Note that although multiple conditions are provided only the exist status of the last
# test command/condition (echo $var2 and $[$var2 -ge 0]) is used to determin when the loop stops

# Enter multiple test commands for while loop on seperate line as shown below

# Each test command is executed for each iteration. On the last iteration when the
# test command fails(i.e the last test command whose exit status is used to terminate the loop)
# all the test commands run but the last one

# As commented above, notice that in the last iteration the loop echoes out -1 at after which
# the second condition([$var2 -ge 0]) fails and terminates the loop without printing the
# echo statement(echo "Reducing the value of $var2 by 1") which should be
# "Reducing the value of -1 by 1""

while echo $var2 
      [ $var2 -ge 0 ]
do
    echo "Reducing the value of $var2 by 1"
    var2=$[ $var2 - 1 ]
    echo
done

###### UNTIL LOOP
## syntax

# until test command
# do
#     commands
# done
echo 
echo "For-loop Example-2a:  basic until loop"
echo 
var3=100

until [ $var3 -eq 0 ]
do
    echo "Reducing the value of $var3 by 25"
    var3=$[ $var3 - 25 ]
    echo "Current value of var1 is: $var3"
    echo
done

echo 
echo "For-loop Example-2b: until loop with multiple conditions"
echo 

# Note that same logic that applies to while loop with multiple test commands also
# applies to the until loop too

var4=100

until echo $var4 
      [ $var4 -eq 0 ]
do
    echo "Reducing the value of $var4 by 25"
    var4=$[ $var4 - 25 ]
    echo
done