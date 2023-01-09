#!/bin/bash
set -xe

# prepare tarfile before zip
if [ -f "$bundle_name" ]; then
  rm "$bundle_name"
fi
touch "$bundle_name"

# zip
tar --exclude={"node_modules",".next","$bundle_name"} -cf "$bundle_name" .
