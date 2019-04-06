#!/bin/sh

sources_dir="music/"
output_dir="docs/_pages/archive/"

# Clean up previous version
[ -d ${output_dir} ] || mkdir ${output_dir}
rm -rf ${output_dir}/*

# Copy source files
basedir=$(pwd)
cd ${sources_dir}
find . -name "*.pdf" -exec rsync -R {} ${basedir}/${output_dir}/ \;
