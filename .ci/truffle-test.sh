#!/bin/bash
node --max-old-space-size=4096 ./node_modules/.bin/truffle test "$@" --debug
