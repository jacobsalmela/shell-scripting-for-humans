#!/bin/bash
# this renames files
files=$(ls IMG*)
if [[ -f $files ]]; then
  mv $files IMG_*
else
  echo its not a file
fi
