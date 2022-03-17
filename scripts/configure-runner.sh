#!/bin/bash -e

cd "/home/labuser/${APP_NAME}-runner"
./svc.sh install
./svc.sh start
