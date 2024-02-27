#!/bin/bash

###########
# Build OpenSSH
#
# Must be run after OQS has been installed
###########

set -exo pipefail

if [ -f Makefile ]; then
    make clean
else
	aclocal
	autoheader
    autoreconf -i
fi

./configure --with-liboqs-dir="$(pwd)/oqs" --with-libs=-lm --with-cflags="-pthread" --with-ldflags="-pthread" 

make 
