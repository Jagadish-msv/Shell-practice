#!/bin/bash

timestamp1=$(date +%s)

echo "script started at $timestamp"
sleep 10
timestamp2=$(date +%s)
total_time=$(($timestamp1-$timestamp2))
echo "script executed in $total_time"