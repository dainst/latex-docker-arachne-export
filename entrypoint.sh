#!/bin/bash
cd /latex-dainst-bundle/dainst-bundle
for file in /files/*.tex
do
    filename=`basename -s .tex ${file}`
    echo "try to render ${filename}"
    make FILE=${filename} render
done
