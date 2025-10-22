#! /bin/bash

source ./config/playground.env

./scripts/stop.sh

SERVICES=$(ls ./services/)

for service in ${SERVICES[@]}; do
    ./services/$service "$LOG_DIR/$service.log" &
    echo "[$!] Starting $service service"
    echo $! > $PID_DIR/$service.pid
done
