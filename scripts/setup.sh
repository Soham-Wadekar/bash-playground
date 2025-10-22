#! /bin/bash

# Create initial setup of the playground

source ./config/playground.env

mkdir -p $PROJECT_HOME
mkdir -p $LOG_DIR $PID_DIR

chmod +x ./services/*
