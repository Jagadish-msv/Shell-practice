#!/bin/bash

userid=$((id -u))

if [$userid -ne 0]; then
    echo "Please run this script with root access"
    Exit 1
fi
echo "installing nginx"
dnf install nginx -y
if [$?=0]; then
    echo "nginx installation completed"

else
    echo "installation failed"

fi