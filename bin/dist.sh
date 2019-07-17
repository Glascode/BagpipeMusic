#!/bin/sh

sources_dir="src/"
archive_dir="docs/archive/"
data_file="docs/_data/archive.yml"

# Copy source files
basedir=$(pwd)
cd ${sources_dir}
echo "Copying source files"
find . -name "*.pdf" -exec rsync -R {} ${basedir}/${archive_dir}/ \;
cd - > /dev/null

echo "Done."
