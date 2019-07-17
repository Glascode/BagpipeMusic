#!/bin/sh

site_dir="docs"

sh bin/dist.sh
cd ${site_dir}
echo "Building site"
jekyll build
cd - > /dev/null
