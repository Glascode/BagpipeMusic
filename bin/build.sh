#!/bin/sh

site_dir="docs"

if [[ ${PWD##*/} == bin ]]; then
    cd $(dirname $0)/..
fi

sh bin/dist.sh
cd ${site_dir}
jekyll build
cd - > /dev/null