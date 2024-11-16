#!/bin/bash

snapshot_dirctory="/home/richa/Desktop/Python Programming/.snapshot"

find "$snapshot_directory" -maxdepth 1 -type d -mtime +15 -exec rm -r {} \;

