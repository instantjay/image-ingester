#!/bin/bash

shopt -s nullglob

for FILE in /var/app/unprocessed/*.*; do
  echo "Encountered file: $FILE";
  CURRENT_FILE_PATH=$(readlink -f "$FILE");
  CURRENT_FILE_NAME=$(basename "$FILE");
  ./bin/compress.sh "$CURRENT_FILE_PATH" "$CURRENT_FILE_NAME";
  done

shopt -u nullglob

#inotifywait -rm --format '%w%f %f' --event create --event moved_to /var/app/raw | ./bin/compress.sh