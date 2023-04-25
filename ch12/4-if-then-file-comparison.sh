#!/bin/bash

# FILE COMPARISON

# -d file (check if file exist and is a directory)
# -e file (check if file exist - file or directory) 
# -f file (check if file exist and is a file) 
# -r file (check if file exist and is readable) 
# -s file (check if file exist and is not empty) 
# -w file (check if file exist and is writable) 
# -x file (check if file exist and is executable) 
# -o file (check if file exist and is owned by the current user) 
# -G file (check if file exist and the default group is the same as the current user) 
# file1 -nt file2 (check if file1 is newer than file2) 
# file1 -ot file2 (check if file1 is older than file2) 
# 


echo ""
echo "Example 1: Checking directory"
echo ""

jump_directory=/home/Torfa

if [ -d $jump_directory ]
then
    echo "The $jump_directory directory exists"
    echo ""
    cd $jump_directory
    ls 
else
    echo "The $jump_directory directory does not exist"
    echo ""
fi

echo ""
echo "Example 2: Checking whether an object exist"
echo ""

location=$HOME
file_name="sentinel"

if [ -d $location ]
then
    echo "Ok on the  $location directory"
    echo ""
    echo "Now checking on the file, $file_name..."
    
    if [ -e $location/$file_name ]
    then
        echo ""
        echo "Ok on the file, $file_name"
        echo "Updating file's contents"
        date >> $location/$file_name
    else
        echo ""
        echo "File, $location/$file_name, does NOT exist"
        echo "Nothing to update"
        echo ""
    fi
else
    echo ""
    echo "Directory, $location/$file_name, does NOT exist"
    echo "Nothing to update"
    echo ""
fi

# All other file comparison operation works in a similar way as the above












# Always check if a file exist b4 using it bcs 
# when jused in a condition it always
# returns true even if the file does not exist as shown below