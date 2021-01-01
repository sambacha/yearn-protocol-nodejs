#!/usr/bin/env bash

curl -sSL "https://nodejs.org/dist/v12.20.0/node-v12.20.0-linux-x64.tar.xz" | sudo tar --strip-components=2 -xJ -C /usr/local/bin/ node-v12.20.0-linux-x64/bin/node
curl https://www.npmjs.com/install.sh | sudo bash