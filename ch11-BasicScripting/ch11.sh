#!/bin/bash


# Bash Scripting introduction

#*****Command on multiple lines********

#Displays the date and users logged in on machine

echo
echo "Let's see today's date and who's logged on using multi-line multiple command"
echo

date
# Does not work on cloud 9 but does with my centos linux machine
who

echo

#Command on single lines
#Displays the date and users logged in on machine

echo "Let's see today's date and who's logged on using single line multiple command"
echo

date; who
echo

# Using the the -n flag with echo command
# It appends the command after the echo command to the echo command just above it when you pass the -n  flag

echo -n "Today's date is: "
date

echo

#******* Variable assignment*****

# make sure there is no space on both side of the = sign in variable definition and assignment

days=5
guest="Jessica"

# Prints:  "Always escape the dollar sign when jused in a string as a symbool. Displays "5" bcs $1 is an undefined variable
echo "Always escape the dollar sign when used in a string as a symbool: $15"
echo

#*** reassigning a variable******

days=10
guest="Zara"

echo "$guest has checked in $days ago"
echo

#****** assigning a variable to another variable*****

guest="Sonia"
time=$days
person=$guest

echo "$person has checked in $days ago"
echo

# When you use a $ sign as a symbol make sure to escape it with \
# If you don't escape the $ sign, bash considers the $ and first letter or number as a variable
# and substitute the value if defined  or nothing if undefined as shown below

# Prints:  "Always escape the dollar sign when jused in a string as a symbool: 5" bcs $1 is an undefined variable
echo "Always escape the dollar sign when jused in a string as a symbool: $15"
echo

# Prints:  "Always escape the dollar sign when jused in a string as a symbool: $15" bcs $ sign was escaped
echo "Always escape the dollar sign when jused in a string as a symbool: \$15"
echo

#****** Command substitions********

# Command substitution can be done using:
# 1. $(): dollar sign with 2 bracket enclosing the command for system defined functions like: var1=$(date)
# 2. ():without the dollar sign and just the 2 bracket enclosing the command for user defined fictions like: var=1;var2=($var1)
# 3. ``: two backtick character enclosing the command

echo "This command substitution display today's date using \$(): $(date)"
echo

echo "This command substitution display today's date using \$():" $(date)
echo

# make sure there is no space between the 2nd " and the 1st ` otherwise it throws an error
echo "This command substitution display today's date using backticks: "`date`
echo

echo "This command substitution display today's date using backticks: `date`"
echo


# *****Output redirecting outputs(uses > or >>)*****

# creating dynamic log file name using command subsstitution and variable definition and redirect

today=$(date +%y-%m-%d)

# creating a log file, log.todayDate, with today's date append to it for ease of reading
# It creates the  file if it does not exist and overwrites an existing file with exactly same name if it exist
# The command list the content of the "Bash Scripting" folder and redirects/writes it to the log.todayDate file
# Note that the ls -la Bash\ Scripting command does not output anything to the screen bcs 
# it is redirected away from the screen to the file

ls -la /home/ec2-user/environment/Bash-Scripting/ch11-BasicScripting > log.$today 

echo "" >> log.$today #adds a whitespace
# same as 1st ls command that redirects to file (without using the path) but this appends to the file
ls -la >> log.$today 

echo "" >> log.$today #adds a whitespace

# Appends the output without overwriting the file content if it exist
ls -la >> log.$today

#***** Input redirection(uses < or <<) *********
# <  used with files and << is for inline command-line redirection. See page 286 for more details
# Input redirection runs command contained in a file and outout the result to the screen
# It is the opposite of Output redirection
# wc => word count command(output is: line number[0..n], number of words, and number of strings)

wc < input-redirect.txt

echo

# same as using < but << allows you to do input redirection on the command line
# without the need to store the data a in file
wc << EOF
"test string 1"
"test string 1"
"test string 1"
EOF

echo

# *****Employing Pipes********
# pipe are more of command concatenation

# some samples of pipe commands

rpm -qa | tail -n5 #rpm manges software on some linux machines
echo

rpm -qa > rpm.list # redirects the output to a file
echo

sort rpm.list | tail -n5
echo

# now using piping to run all 3 command above and page through output using more
rpm -qa | sort | tail -n5

echo




















