#!/bin/bash

echo -en "travis_fold:start:gitstats_html\r"
echo "### Reportes gitstats html del repositorio"
mkdir -p build/gitstats
gitstats . build/gitstats 2> build/gitstats/errno.log
echo -en "travis_fold:end:gitstats_html\r"

echo -en "travis_fold:start:gitinspector_html\r"
echo "### Reportes gitinspector html del repositorio"
mkdir -p build/gitinspector
gitinspector -T -m -F html > build/gitinspector/index.html
echo -en "travis_fold:end:gitinspector_html\r"

echo -en "travis_fold:start:gitinspector\r"
echo "### Reportes gitinspector text del repositorio"
gitinspector -T -m
echo -en "travis_fold:end:gitinspector\r"
