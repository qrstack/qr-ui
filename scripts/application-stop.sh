#!/bin/bash
set -x

pm2 delete all
service nginx stop