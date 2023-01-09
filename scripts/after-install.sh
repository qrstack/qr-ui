#!/bin/bash
set -xe

export BASE_DIR=~/work/qrstack/qr-ui

# Clean directory
if [ -d $BASE_DIR ]; then
  rm -rf $BASE_DIR
fi
mkdir -vp $BASE_DIR

# Copy bundle from S3 bucket
aws s3 cp s3://$BUNDLE_BUCKET/$BUNDLE_KEY $BASE_DIR/$BUNDLE_KEY

# Extract bundle
tar -xvf $BASE_DIR/$BUNDLE_KEY
