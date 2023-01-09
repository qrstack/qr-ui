#!/bin/bash
set -xe

# Delete the old directory as needed.
if [ -d /usr/local/codedeployresources ]; then
    rm -rf /usr/local/codedeployresources/
fi

mkdir -vp /usr/local/codedeployresources

if [ -d /home/ec2-user/work/qrstack/qr-ui ]; then
    rm -rf /home/ec2-user/work/qrstack/qr-ui/
fi

mkdir -vp /home/ec2-user/work/qrstack/qr-ui