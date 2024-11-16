#!/bin/bash
source_directory="/home/richa/Desktop/Python Programming"
snapshot_dirctory="/home/richa/Desktop/Python Programming/.snapshot"

timestamp=$(date +%Y%m%d%H%M%S)
snapshot_path="$snapshot_dirctory/snapshot_$timestamp"

rsync -a --link-dest="$snapshot_dirctory/latest" "$source_directory/" "$snapshot_path"

rm -f "$snapshot_dirctory/latest"
ln -s "$snapshot_path" "$snapshot_dirctory/latest"


