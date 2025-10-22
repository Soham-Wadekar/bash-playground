#! /bin/bash

source ./config/playground.env

./services/heartbeat "$LOG_DIR/heartbeat.log" &
echo "[$!] Starting heartbeat service"
echo $! > $PID_DIR/heartbeat.pid

./services/log_generator "$LOG_DIR/generator.log" &
echo "[$!] Starting log generator service"
echo $! > $PID_DIR/generator.pid