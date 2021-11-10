#!/bin/bash
set -e

echo "Started watching.."

while true; do /bin/inotify.sh; sleep 3; done