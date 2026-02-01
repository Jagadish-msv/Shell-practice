#!/bin/bash

for $@ in list do

    userid=$(id -u)

    if [ $userid -ne 0 ]; then
        echo "Please run this script with root access"
        exit 1
   
    else 
        echo "running with root access"
    

        echo "installing $1"
        dnf install $1 -y
    if [ $?=0 ]; then
        echo "$1 installation completed"

    else
        echo " $1 installation failed"

    fi
fi

done



