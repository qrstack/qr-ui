#!/bin/bash
set -xe

cd ~/work/qrstack/qr-ui/client/
#
yarn install
yarn run build

ls -a