#!/bin/sh

site_dir="docs"

if [[ ${PWD##*/} == bin ]]; then
    cd $(dirname $0)/..
fi

sh bin/dist.sh
cd ${site_dir}
echo "Building site"
jekyll build
cd - > /dev/null