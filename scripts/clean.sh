#! /bin/bash

# Create initial setup of the playground

source ./config/playground.env

./scripts/stop.sh
rm -rf $PROJECT_HOME
