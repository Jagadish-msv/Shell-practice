#!/bin/bash

if [ $# -ne 1 ] ; then
    echo "argumrnt or file not provided"
    exit 1

fi

if [ ! -e $1 ]; then
    echo " $1 is not the file path"
    
fi
if [ -d $1 ]; then
    echo " $1 is the directory"
    echo "contents :"
    ls -l "$1"
    exit 0
else 
    echo "$1 is file"

    if [ -r $1 ]; then
        echo "$1 is readable"
    else    
        echo "$1 is not readable"
        
    fi
    if [ -w $1 ]; then
        echo "$1 is writable"
    else 
        echo "$1 is not writable"
    fi
fi



