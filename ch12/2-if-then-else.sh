#!/bin/bash

# The if-then statement basically test for a zero (0) or non-zero (1-255) exit status
# Basically, it test whether a command executed successfully or failed

# Syntax
#1.
#       if command
#       then
#           commands
#       else
#           commands
#       fi

#2.
#       if command; then
#           commnads
#       else
#           commands
#       fi
echo ""

testuser=NoSuchUser

if grep $testuser /etc/passwd
then
    echo "This user account exist on this machine"
else
    echo "This user account does not exist on this machine"
fi

echo ""

# Nesting if-then Syntax
#1. "Have a nest if-then's as you want"
#       if command 1
#       then
#           commands
#       else command 2
#       then
#           commands
#       fi

# 2. "Have the number of "elif's you want".
# Note that the "else block" only applies to the command mjust above it
# wherever it appears in the elif statements

#       if command; then
#           commnads
#       elif
#       then
#           commands
#       elif
#           then
#               commands
#           else
#       fi


newuser="chuks-centos-7"

if grep $newuser /etc/passwd
then
    echo "This user account exist on this machine"
    echo ""

    if ls -d /home/$newuser/
    then
        echo "This $newuser has a user directory at: /home/$newuser"
        echo ""
    fi
else
    echo "This user does not exist on this machine"
fi

echo ""

# You can create a directory "NoSuchUser" at /home/chuks-centos-7/NoSuchUser
# to test the "elif" block this bcs the user does not really exist
# now delete the directory if you created it above to test the "then"
# block in the "elif" block

anotheruser=NoSuchUser

if grep $anotheruser /etc/passwd
then
    echo "This user account, $anotheruser, exist on this machine"
elif ls -d /home/chuks-centos-7/$anotheruser
    then
        echo "This user account, $anotheruser, does not exist on this machine"
        echo ""
        echo "However, the user directory, $anotheruser, is still not deleted"
    else
        echo "The user directory, $anotheruser, has perhaps been removed"
        echo "As such, no directory with the name $anotheruser exist"
fi

echo ""
