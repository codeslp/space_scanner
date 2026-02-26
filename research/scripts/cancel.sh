#!/bin/bash
#
# Cancel a scheduled reinitializer
#
PID_FILE="/tmp/space_scanner_reinit.pid"

if [[ -f "$PID_FILE" ]]; then
    pid=$(cat "$PID_FILE")
    if kill -0 "$pid" 2>/dev/null; then
        kill "$pid"
        echo "Reinitializer (PID $pid) cancelled."
        rm -f "$PID_FILE"
    else
        echo "Reinitializer (PID $pid) is not running. Cleaning up."
        rm -f "$PID_FILE"
    fi
else
    echo "No scheduled reinitializer found."
fi
