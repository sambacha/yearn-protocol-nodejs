#!/usr/bin/env bash
set -e

CONTRACTS=$(pwd)
sudo chmod -R a+rwx /usr/local/lib/node_modules


run_slither() {
    cd "$1"
    mkdir -p node_modules/
    cp -r ../../node_modules/@openzeppelin ./node_modules/@openzeppelin

    cd "$CONTRACTS"

    # print out slither version for debugging
    slither --version
    slither --exclude=divide-before-multiply,unused-return,timestamp,naming-convention,pragma,solc-version,external-function,reentrancy-benign,reentrancy-no-eth,arbitrary-send,incorrect-equality,reentrancy-events,assembly,uninitialized-local "$1"
}

run_slither "contracts/"
