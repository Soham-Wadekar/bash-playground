#! /bin/bash

source ./config/playground.env

./scripts/stop.sh

SERVICES=$(ls ./services/)

for service in ${SERVICES[@]}; do
    ./services/$service "$LOG_FILE" 2> >(while read -r line; do
        echo "$(date +%Y-%m-%d\ %H:%M:%S) | $service | $line" >> "$ERR_FILE"
    done) &
    echo "[$!] Starting $service service"
    echo $! > $PID_DIR/$service.pid
done
