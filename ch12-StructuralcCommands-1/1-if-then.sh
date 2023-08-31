#!/bin/bash

# The if-then statement basically test for a zero (0) or non-zero (1-255) exit status
# Basically, it test whether a command executed successfully or failed

# Syntax
#1.
#       if command
#       then
#           commands
#       fi
#  OR
#       if (command)
#       then
#           commands
#       fi

#2.
#       if command; then
#           commnads
#       fi
#  OR
#       if (command); then
#           commnads
#       fi


echo ""

if (pwd)
then
    echo "This is my current working directory: "
fi

echo ""

if IamNotACommand; then
    echo "This command  does not exist: "
fi

echo ""