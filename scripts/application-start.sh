#!/bin/bash
set -xe

export BASE_DIR=/home/ubuntu/work/qrstack/qr-ui

cd $BASE_DIR
yarn install && yarn build
pm2 start yarn --name "qr-ui" -- start
service nginx restart