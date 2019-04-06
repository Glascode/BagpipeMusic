#!/bin/sh

sources_dir="music"
archive_dir="docs/archive"

# Clean up previous version
echo "Cleaning archive"
[ -d ${archive_dir} ] || mkdir ${archive_dir}
rm -rf ${archive_dir}/*

# Copy source files
basedir=$(pwd)
cd ${sources_dir}
echo "Copying source files"
find . -name "*.pdf" -exec rsync -R {} ${basedir}/${archive_dir}/ \;
cd - > /dev/null

# Clean up previous version
data_file="docs/_data/archive.yml"
echo "Cleaning data file"
[ -f ${data_file} ] || touch ${data_file}
> ${data_file}

# Fill data file
echo "Filling data file"
for directory in ${archive_dir}/*
do
    if [[ -d $directory ]]; then
        category_title=`sed -E 's///g'`
        echo "- title: '${directory##*/}'" >> ${data_file}
        echo "  items:"            >> ${data_file}
        for file in ${directory}/*
        do
            if [[ -f $file ]]; then
                score_title=`awk -F ' = ' '/title/ {print $2}' ${file##*/} | sed -E 's/"//g'`
                echo "    - title: '${score_title}'" >> ${data_file}
            fi
        done
    fi
done


echo "Done."