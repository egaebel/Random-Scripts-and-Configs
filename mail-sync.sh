#!/bin/bash

BASE_DIR="/home/egaebel/.mail/paper-to-push/new/"
PAPERS_DIR="/home/egaebel/workspace/Papers/paper-push-bot-drop-spot"

cur_seconds=$(date +%s)
echo "Current seconds: $cur_seconds"

# Sync mail from imap and save to dir
offlineimap && munpack /home/egaebel/.mail/paper-to-push/new/*

ls_file_names=$(ls $BASE_DIR)
readarray -t file_names < <( echo "$ls_file_names" )
echo "File names: $file_names"

echo "Extracting timestamps from file names....."
timestamps=()
for file_name in "${file_names[@]}"; do
    timestamp=$(echo $file_name | cut -d "/" -f7 | cut -d "_" -f1)
    timestamps+=("$timestamp")
done
echo "Timestamps: ${timestamps[@]}"

echo "Extracting attachments from new emails....."
for i in $(seq 0 "${#file_names[@]}"); do
    filtered_file_name="${file_names[$i]}"
    timestamp="${timestamps[$i]}"
    if [[ "$timestamp" -gt "$cur_seconds" ]]; then
        echo "Extracting from file name: $filtered_file_name"
        mu extract -a --target-dir="$PAPERS_DIR" "$BASE_DIR$filtered_file_name"
    fi
done