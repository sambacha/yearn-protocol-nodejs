#!/bin/bash
yarn --version || exit 1
rm package.json 
rm yarn.lock
echo -ne "==> Downloading Configuration"
wget https://raw.githubusercontent.com/sambacha/yearn-protocol-nodejs/master/truffle-config.js
wget https://raw.githubusercontent.com/sambacha/yearn-protocol-nodejs/master/package.json
echo -ne "==> Installing..."
yarn install
# mapping openzeppelinV2 Brownie import for Truffle
# node_modules/\@openzeppelin/ node_modules/\@openzeppelin
export @openzeppelinV2/=$(pwd)/node_modules/@openzeppelin/ contracts/*.sol
./node_modules/.bin/truffle compile || exit 1
echo -ne "Finished Generating, outputs in  $PWD/build/ "
