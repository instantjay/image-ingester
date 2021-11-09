#!/bin/bash
set -e

IMAGES_PATH=/var/app/processed/"$2"

echo "Processing file at path: $1"
echo "File being processed: $2"

convert -auto-level -normalize -resize 1920x1920 -compress JPEG2000 -quality 90 "$1" "$IMAGES_PATH"
vignette "$IMAGES_PATH" "$IMAGES_PATH"
mv "$1" /var/app/originals/"$2";

echo "Saved processed image to $IMAGES_PATH"