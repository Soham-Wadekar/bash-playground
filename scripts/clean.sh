#! /bin/bash

# Create initial setup of the playground

source ./config/playground.env

rm -rf $PROJECT_HOME

chmod -x scripts/*.sh