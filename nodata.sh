#!/bin/bash

echo -en "travis_fold:start:nodata\r"

echo "### Retos de programación sin set de datos"

find challenges/codeeval challenges/codeabbey \
	-type d '!' \
        -exec test -e "{}/DATA.txt" ';' \
        -print

echo -en "travis_fold:end:nodata\r"
