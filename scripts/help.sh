#! /bin/bash

source ./config/playground.env

ARG=$1
SERVICES=$(ls ./services/)

case $1 in 
    heartbeat)
        echo $1
        ;;
    *)
        echo "Usage: make help <service>"
        echo "Services:"

        echo -e "\t${SERVICES[@]}"
        ;;
esac