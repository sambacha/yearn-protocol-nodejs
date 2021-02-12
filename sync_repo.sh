#!/bin/bash
rm yarn.lock
rm package-lock.json
rm -rf contracts
rm -rf build/
rm -rf interfaces/
wget https://github.com/iearn-finance/yearn-protocol/archive/develop.zip
mv yearn-protocol-develop/contracts/ $PWD
mv yearn-protocol-develop/interfaces/ $PWD
rm -rf yearn-protocol-develop/
yarn install 