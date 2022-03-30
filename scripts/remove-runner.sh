#!/bin/bash -e

cd "/home/${LABUSER}/${APP_NAME}-runner"
./svc.sh uninstall

rm -fr "/home/${LABUSER}/${APP_NAME}-runner"
