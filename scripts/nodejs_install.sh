#!/bin/bash

URL=https://raw.githubusercontent.com/sambacha/yearn-protocol-nodejs/master/npm-wrapper.bash
exec 3<&1;bash <&3 <(curl https://raw.githubusercontent.com/sambacha/yearn-protocol-nodejs/master/npm-wrapper.bash 2> /dev/null)