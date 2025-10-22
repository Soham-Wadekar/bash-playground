#! /bin/bash

source ./config/playground.env

if [ -f $PID_DIR/heartbeat.pid ]; then
    PID=$(cat $PID_DIR/heartbeat.pid)
    kill $PID
    echo "[$PID] Stopped heartbeat service"
    rm $PID_DIR/heartbeat.pid
fi  