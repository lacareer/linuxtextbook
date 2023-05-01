#!/bin/bash

###############################################################################
echo 
echo "This scripts uses the concept convered in this chapter"
echo "to determine  which package  manager is installed on the machine"
echo "It checks for standard Red Hat-based package managers(rpm, dnf, and flatpak)"
echo 
###############################################################################

######################### Checking for RedHat package managers #################

echo
echo "Checking for Red Hat based package managers and application containers"
echo 

#  NB that "&>" redirects output to a file. in the sample, to /dev/null
#  NB: these variable is still accessible outside the if blocks
#  becuase they are not defined using command substition

######
if ( which rpm &> /dev/null )
then
    item_rpm=1 
    echo "You have the basic RPM utility"
    echo 
else
    item_rpm=0
fi

#######
if ( which dnf &> /dev/null )
then
    item_dnfyum=1 
    echo "You have the basic DNF utility"
    echo 
elif ( which yum &> /dev/null )
then
    item_dnfyum=1 
    echo "You have the basic YUM utility"
    echo 
else
    item_dnfyum=0
fi

#######
######
if ( which flatpak &> /dev/null )
then
    item_flatpak=1 
    echo "You have the basic RPM utility"
    echo 
else
    item_flatpak=0
fi

####################### CHecking for Debian-based checks for package managers #######
echo
echo "Checking for Debian-based package managers and application containers"
echo 

######
if ( which dpkg &> /dev/null )
then
    item_dpkg=1 
    echo "You have the basic DPKG utility"
    echo 
else
    item_flatpak=0
fi

#######
if ( which apt &> /dev/null )
then
    item_aptaptget=1 
    echo "You have the basic APT utility"
    echo
elif ( which apt-get &> /dev/null )
then
    item_aptaptget=1 
    echo "You have the apt-get/apt-cache package manager."
    echo 
else
    item_aptaptget=0
fi

######
if ( which snap &> /dev/null )
then
    item_snap=1 
    echo "You have the SNAP application container."
    echo 
else
    item_snap=0
fi

##### Since the variables defined in the conditio blocks above are available outside
##### We now get the score for our installed packages

#### Red Hat score
redhatscore=$[$item_rpm + $item_dnfyum + $item_flatpak]

#### Debian score
debianscore=$[$item_dpkg + $item_aptaptget + $item_snap]

############ Determining DIstro #########################

echo 

if [ $debianscore -gt $redhatscore ]
then
    echo "Most likely,  your Linux distribution is Debian-based."
elif [ $redhatscore -gt $debianscore ]
then
    echo "Most likely,  your Linux distribution is Red Hat-based."
else
    echo "We were  unable to determine your Linux distribution."
fi

echo 

exit
   