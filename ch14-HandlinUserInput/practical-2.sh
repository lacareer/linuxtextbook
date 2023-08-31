#!/bin/bash

###############################################################################
echo 
echo "This scripts handles user input and employs ping or ping6 to rest connectivity to other systems"
echo 
echo "The script has reads data via a file"
echo
###############################################################################

# Run script with command: ./practical-2.sh
# file name  to use => ~/environment/Bash-Scripting/ch14-HandlinUserInput/addresses.txt
echo "Please enter a file name with an absolute directory reference..."
echo
choice=0

# get file name with path from user
while [ $choice -eq 0 ]
do
    read -t 10 -p "Please enter name of file: " filename
    if [ -z $filename ]
    then 
        quitanswer=""

        read -t 10 -p "Quit script [Y/N]: " quitanswer

        case $quitanswer in 
            Y|y)
                echo
                echo "Quitting script..."
                exit;;
            N|n)
                echo
                echo "Please ensure you enter a file name "
                choice=0
                echo;;
            *)
                echo
                echo "No response. Quitting script..."
                echo;;
        esac
    else 
        choice=1
    fi
done

# checks that file chosen by user is readable and not empty
if [ -s $filename ] && [ -r $filename ]
then
    echo "$filenameis a file, is readable, and is not empty."
    echo
    cat $filename | while read line # reads line from top of file and skips any alread read line/s
    do
        ipaddress=$line      
        read line # reads the next line that contains the ip version. Next read continus from the line after it
        echo $line
        echo
        iptype=$line

        if [ $iptype = "IPv4" ]
        then 
            pingcommand=$(which ping)
        else 
            pingcommand=$(which ping6)
        fi
        
        echo
        echo "Checking system ay $ipaddress..."
        $pingcommand -q -c 3 $ipaddress
        echo
    done 

    echo "Finished procesing the file. All systems checked."
    echo
else 
    echo
    echo "$filename is either not a file, is  empty, or is not readable by you."
    echo
    echo "Exiting script..."
    echo
fi 
exit