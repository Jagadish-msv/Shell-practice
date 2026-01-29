#!/bin/bash

timestamp1=$(date +%s)

echo "script started at $timestamp1"
sleep 10
timestamp2=$(date +%s)
total_time=$(($timestamp2-$timestamp1))
echo "script executed in $total_time"