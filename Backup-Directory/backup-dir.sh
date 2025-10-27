#!/bin/bash

src_dir="$pwd/projects"
dest_dir="$pwd/backups"

ts=$(date +"%Y-%m-%d-%H-%M-%S")
mkdir -p "$dest_dir/backup_$ts"
cp -r "$src_dir"/* "dest_dir/backup_$ts"/