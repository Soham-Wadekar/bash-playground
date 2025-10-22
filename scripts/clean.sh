#! /bin/bash

# Create initial setup of the playground

source ./config/playground.env

echo "Cleaning playground..."
./scripts/stop.sh

sleep 3

rm -rf $PROJECT_HOME

clear
