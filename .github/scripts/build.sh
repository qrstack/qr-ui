#!/bin/bash
set -xe

# prepare tarfile before zip
if [ -f "$TAR_FILE" ]; then
  rm "$TAR_FILE"
fi
touch "$TAR_FILE"

# zip
tar --exclude={"node_modules",".next","$TAR_FILE"} -czf "$TAR_FILE" .
