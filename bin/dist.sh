#!/bin/sh

sources_dir="music"
archive_dir="docs/archive"
data_file="docs/_data/archive.yml"

if [[ ${PWD##*/} == bin ]]; then
    cd $(dirname $0)/..
fi

# Clean up previous version
echo "Clean archive"
[ -d ${archive_dir} ] || mkdir ${archive_dir}
rm -rf ${archive_dir}/*

# Copy source files
basedir=$(pwd)
cd ${sources_dir}
echo "Copy source files"
find . -name "*.pdf" -exec rsync -R {} ${basedir}/${archive_dir}/ \;
cd - > /dev/null

# Clean up previous version
echo "Clean data file"
[ -f ${data_file} ] || touch ${data_file}
> ${data_file}

# Fill data file
echo "Fill data file"
for directory in ${sources_dir}/*; do
    if [[ -d $directory ]]; then
        category_title=$(echo ${directory##*/} | sed -E 's/_/\//g' | sed -E 's/\-/ /g')
        echo "- title: ${category_title}" >> ${data_file}
        echo "  items:"                   >> ${data_file}

        for file in ${directory}/*; do
            if [[ -f $file && ${file: -4} == ".pdf" ]]; then
                # A pdf was generated from a .ly file anyway
                file=${file##*/}
                file_name="${file%.*}.ly"
                score_title=$(cat ${directory}/${file_name} | awk -F ' = ' '/^ *title/ {print $2}' | sed -E 's/"//g')
                echo "    - title: ${score_title}"      >> ${data_file}
                echo "      path: ${directory#*/}/${file}" >> ${data_file}
            fi
        done
    fi
done


echo "Done."