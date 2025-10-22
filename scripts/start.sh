#! /bin/bash

source ./config/playground.env

./services/heartbeat "$LOG_DIR/heartbeat.log" &
echo "[$!] Starting heartbeat service"
echo $! > $PID_DIR/heartbeat.pid