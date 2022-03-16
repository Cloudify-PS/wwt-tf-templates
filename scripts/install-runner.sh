#!/bin/bash

mkdir "${APP_NAME}-runner" && cd "${APP_NAME}-runner"
curl -o actions-runner-linux-x64-2.288.1.tar.gz \
  -L https://github.com/actions/runner/releases/download/v2.288.1/actions-runner-linux-x64-2.288.1.tar.gz
tar xzf ./actions-runner-linux-x64-2.288.1.tar.gz
./config.sh --url https://github.com/${REPO_NAME} --token ${REGISTRATION_TOKEN}