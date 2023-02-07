#!/bin/bash

GLOBIGNORE=".:.."
for folder in /home/egaebel/workspace2/Programs/*; do
    rsync -av "/home/egaebel/workspace2/Programs/$folder" "/home/egaebel/the-archive/Programs--backup/$folder"
done
