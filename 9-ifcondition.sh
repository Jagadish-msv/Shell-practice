#!/bin/bash

Num=$@
num1=$Num%2

if [$num1 -eq 0] ; then
echo "$Num is even number"
echo "$num1"

else


echo "$Num is odd number"
fi