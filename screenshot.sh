#!/bin/sh

dir=$(date +"%F")
out_path="$HOME/Pictures/screenshots/$dir"
filename=$(date +"%H-%M-%S")

mkdir -p $out_path

if [ ! -z "$1" ] && [ "$1" = "-edit" ]; then
    exec coral-screenshot -q | coral-editor -g -f -o "$out_path/screenshot_$filename.png"
else
    exec coral-screenshot -q -o "$out_path/screenshot_$filename.png"
fi
