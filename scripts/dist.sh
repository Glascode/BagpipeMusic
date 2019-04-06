#!/bin/sh

sources_dir="music"
output_dir="docs/_pages/archive"

# Clean up previous version
echo "Cleaning archive"
[ -d ${output_dir} ] || mkdir ${output_dir}
rm -rf ${output_dir}/*

# Copy source files
basedir=$(pwd)
cd ${sources_dir}
echo "Copying source files"
find . -name "*.pdf" -exec rsync -R {} ${basedir}/${output_dir}/ \;
cd - > /dev/null

# Clean up previous version
data_file="docs/_data/archive.yml"
echo "Cleaning data file"
[ -f ${data_file} ] || touch ${data_file}
> ${data_file}

# Fill data file
echo "Filling data file"
for directory in ${output_dir}/*
do
    if [[ -d $directory ]]; then
        echo "- title: '${directory##*/}'" >> ${data_file}
        echo "  items:"            >> ${data_file}
        for file in ${directory}/*
        do
            if [[ -f $file ]]; then
                echo "    - '${file##*/}'" >> ${data_file}
            fi
        done
    fi
done


echo "Done."