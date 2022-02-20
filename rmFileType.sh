#!/usr/bin/env bash
read -p "Are you sure you want to delete the files? Y/N " -n 1 -r
echo
if [[ $REPLY =~ ^[Yy]$ ]];  then
    find . -type f -name "*.yml" -delete
    find . -type f -name "*.log" -delete
    find . -type f -name "*.p"  -delete
    find . -type f -name "scan_thumbnail.jpg" -delete
    find . -type f -name "webcam_full.jpg" -delete
    echo "all those files have been deleted............."
fi