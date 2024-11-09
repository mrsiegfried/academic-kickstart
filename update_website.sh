#!/bin/bash

#### to update cv, copy it to static/files/cv.pdf

if [[ $# -ne 1 ]]; then
    echo "need to include a message"
    exit 0
fi

hugo
git add *
git commit -a -m"$1"
git push
cd public
git add *
git commit -a -m"$1"
git push
cd ..
echo "done updating website"
