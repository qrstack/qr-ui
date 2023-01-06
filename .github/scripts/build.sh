#!/bin/bash
set -xe

# prepare tarfile before zip
if [ -f "$tgz_filename" ]; then
  rm "$tgz_filename"
fi
touch "$tgz_filename"

# zip
tar --exclude={"node_modules",".next","$tgz_filename"} -czf "$tgz_filename" .
