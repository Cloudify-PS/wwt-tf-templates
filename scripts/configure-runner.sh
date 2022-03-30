#!/bin/bash -e

cd "/home/${LABUSER}/${APP_NAME}-runner"
./svc.sh install
./svc.sh start
