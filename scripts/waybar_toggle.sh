#!/bin/bash

# Path to the Waybar executable
WAYBAR_PATH="waybar"

# Check if Waybar is running
if pgrep -x $(basename $WAYBAR_PATH) > /dev/null; then
    # If Waybar is running, kill it
    killall -q $(basename $WAYBAR_PATH)
else
    # If Waybar is not running, start it
    nohup $WAYBAR_PATH > /dev/null 2>&1 &
fi

