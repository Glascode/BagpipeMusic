#!/bin/sh

sources_dir="src"
archive_dir="docs/archive"
data_file="docs/_data/archive.yml"

if [[ ${PWD##*/} == bin ]]; then
    cd $(dirname $0)/..
fi

# Copy source files
basedir=$(pwd)
cd ${sources_dir}
echo "Copying source files"
find . \( -name '*.pdf' -o -name '*.jpg' -o -name '*.png' -o -name '*.gif' \) -exec rsync -R {} ${basedir}/${archive_dir}/ \;
cd - > /dev/null

# Clean up previous version
echo "Cleaning data file"
[ -f ${data_file} ] || touch ${data_file}
> ${data_file}  # clean up file

is_image() {
    local file_name="$*"
    local extname="${file_name##*.}"
    case ${extname} in
        "pdf"|"jpg"|"jpeg"|"png"|"gif")
            return 0
            ;;
        *)
            return 1
            ;;
    esac
}

format_title() {
    local title="$*"
    if [[ ${title:0:4} == "The " ]]; then
        echo "${title#The }, the"
    else
        echo $title
    fi
}

make_data_file() {
    for directory in ${sources_dir}/*; do
        if [[ -d $directory ]]; then
            category_title=$(echo ${directory##*/} | sed -E 's/_/\//g' | sed -E 's/\-/ /g')
            echo "- title: ${category_title}" >> ${data_file}
            echo "  items:"                   >> ${data_file}

            # Parse pdf and images files
            for file in ${directory}/*; do
                if [[ -e $file ]] && is_image $file; then
                    # A pdf was generated from a .ly file anyway
                    file_name=${file##*/}  # get file name withtout the full path 
                    file_basename="${file_name%.*}"  # get file basename
                    file_extname="${file_name#*.}"  # get file extension
                    ly_file="${file_basename}.ly"
                    if [[ -e $directory/$ly_file ]]; then  # if there is a Lilypond file
                        score_title=$(cat ${directory}/${ly_file} | awk -F ' = ' '/^[ \t]*title/ {print $2}' | sed -E 's/"//g')
                    else
                        score_title=${file_basename}
                    fi
                    score_title=$(format_title ${score_title})
                    echo "    - title: ${score_title}"               >> ${data_file}
                    echo "      path: ${directory#*/}/${file_name}"  >> ${data_file}
                    echo "      extname: .${file_extname}"           >> ${data_file}
                fi
            done
        fi
    done
}

make_data_file


echo "Done."