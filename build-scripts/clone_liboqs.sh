#!/bin/bash

set -exo pipefail

rm -rf build-scripts/tmp $$ mkdir build-scripts/tmp
git clone --branch "main" --single-branch "https://github.com/open-quantum-safe/liboqs.git" build-scripts/tmp/liboqs

