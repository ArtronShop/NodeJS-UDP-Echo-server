#!/bin/bash

# Add this file to /etc/rc.local

NOW_PATH="$(dirname $(readlink -f $0))"
LOGSIZE=$(stat -c%s "$NOW_PATH/runing.log")

if [ $LOGSIZE -gt 102400 ]; then # if > 100KB
	echo "" > "$NOW_PATH/runing.log"
fi

while : ; do
	node "$NOW_PATH/app.js" >> "$NOW_PATH/runing.log"
	sleep 1
done