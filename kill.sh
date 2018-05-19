#!/bin/bash

NOW_PATH="$(dirname $(readlink -f $0))"
sudo killall "start.sh"
sudo killall "nodejs"
