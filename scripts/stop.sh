#! /bin/bash

source ./config/playground.env

SERVICES=$(ls ./services/)

for service in ${SERVICES[@]}; do
    if [ -f $PID_DIR/$service.pid ]; then
        PID=$(cat $PID_DIR/$service.pid)
        kill $PID 2>/dev/null
        echo "[$PID] Stopped $service service"
        rm $PID_DIR/$service.pid
    fi
done
