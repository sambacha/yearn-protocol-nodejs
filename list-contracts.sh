#!/bin/sh
cd contracts/
tree -FL 3 | grep -v /$ 
tree -FL 3 | grep -v /$ 2> error.txt 1> output.txt
