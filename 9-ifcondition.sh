#!/bin/bash

userid=$((id -u))

if [ $userid -eq 0 ]; then
    echo "Please run this script with root access"
    exit 1
   
else 
    echo "running with root access"
    
fi
#echo "installing nginx"
#dnf install nginx -y
#if [ $?=0 ]; then
 #   echo "nginx installation completed"

#else
 #   echo "installation failed"

#fi