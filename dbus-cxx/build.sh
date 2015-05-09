#! /bin/bash
# Copyright 2014-2015 Peter Williams and collaborators.
# This file is licensed under a 3-clause BSD license; see LICENSE.txt.

set -e
./configure --prefix=$PREFIX --disable-ecore || { cat config.log ; exit 1 ; }
make -j$(nproc --ignore=4)
make install
