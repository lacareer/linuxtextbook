#!/bin/bash

###############################################################################
echo 
echo "This scripts handles user input and employs ping or ping6 to rest connectivity to other systems"
echo 
echo "The script uses the method of command-line options and parameters"
echo
###############################################################################

# RUN SCRIPT WITH THIS COMMAND BELOW
# './practical-1.sh -t IPv4 192.168.1.102 192.168.1.103'

while getopts t: opt
do
    case "$opt" in 
        t)
            if [ $OPTARG = "IPv4" ]
            then 
                pingcommand=$(which ping)
            elif [ $OPTARG = "IPv6" ]
            then 
                pingcommand=$(which ping6)
            else
                echo "Usage: -t IPv4 or -t IPV6" 
                echo "Exiting script ..."
                echo
                exit 
            fi 
            ;;
        *)
            echo "Usage: -t IPv4 or -t IPv6" 
            echo "Exiting script ..."
            echo
            exit;;
    esac

    shift $[ $OPTIND -1 ]

    if [ "$#" -eq 0 ]
    then 
        echo
        echo "IP Address(es) parameters are missing."
        echo
        echo "Existing scripting ..."
        exit 
    fi 

    for ipaddress in "$@"
    do
        echo
        echo "Checking system at $ipaddress."
        echo
        $pingcommand -q -c 3 $ipaddress
        echo 
    done
    exit
done