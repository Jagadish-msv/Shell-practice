#!/bin/bash

for x in list do

    userid=$(id -u)

    if [ $userid -ne 0 ]; then
        echo "Please run this script with root access"
        exit 1
   
    else 
        echo "running with root access"
    

        echo "installing $x"
        dnf install $x -y
    if [ $?=0 ]; then
        echo "$x installation completed"

    else
        echo " $x installation failed"

    fi
fi

done



