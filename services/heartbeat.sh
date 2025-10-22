#! /bin/bash

# This file produces an endless log of timestamps every 3 seconds and stores them inside a log file

set -e

while true; do
    DATE=$(date +"%H:%M:%S")
    TYPE=$(shuf -e -n1 DEBUG ERROR INFO WARN)
    echo "$TYPE | $DATE | This is a test log" >> $1
    sleep 3
done
