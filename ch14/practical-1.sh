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

# determine command-line entered by user
while getopts t: opt
do
    # tries to get the value of the option enter via command-line,  either IPv4 or IPv6
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
    # uses shift to delete all entered options
    shift $[ $OPTIND -1 ]
    # checks that total param is not 0
    if [ "$#" -eq 0 ]
    then 
        echo
        echo "IP Address(es) parameters are missing."
        echo
        echo "Existing scripting ..."
        exit 
    fi 
    # ping all entered addresses
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