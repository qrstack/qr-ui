#!/bin/bash
set -xe

# Delete the old directory as needed.
export CODEDEPLOY_DIR=/usr/local/codedeployresources

if [ -d $CODEDEPLOY_DIR ]; then
    rm -rf $CODEDEPLOY_DIR
fi
mkdir -vp $CODEDEPLOY_DIR

export BASE_DIR=/home/ubuntu/work/qrstack/qr-ui

if [ -d $BASE_DIR ]; then
    rm -rf $BASE_DIR
fi
mkdir -vp $BASE_DIR
