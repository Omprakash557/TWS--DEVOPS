#!/bin/bash

src=$2
dest=$1
timstamp=$(date '+%Y-%m-%d-%H-%M')

zip -r "$1/backup-$timstamp.zip" "$src" > /dev/null

aws s3 sync "$1" s3://backup-scripts-om/ 

echo "Backup Completed" 
