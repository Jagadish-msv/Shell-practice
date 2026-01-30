#!/bin/bash

Num=$@
num1=$Num%2

if [$num1 -eq 0] ; then
echo "$Num is even number"

if [$num -gt 0]; then
echo "$Num s odd number"
fi