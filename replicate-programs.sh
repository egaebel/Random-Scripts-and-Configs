#!/bin/bash

set -e
set -o pipefail

GLOBIGNORE=".:.."
for folder_path in /home/egaebel/workspace2/Programs/*; do
    folder_name=$(basename $folder_path)
    # echo "full path: ||$folder_path||"
    # echo "folder: ||$folder_name||"
    rsync -av "$folder_path" "/home/egaebel/workspace3/Programs/$folder_name" &
done
