#!/bin/sh
export CI=''
export SOLIDITY_COVERAGE=true

set -o errexit
yarn
yarn add --dev https://github.com/sc-forks/solidity-coverage.git#$COMMIT_REF
cat package.json
npm run coverage
