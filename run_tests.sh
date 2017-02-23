#!/usr/bin/env bash
#resolve dependencies
cmake .
#build test binary
make dz_test
#run binary executable
test/dz_test