#!/bin/bash
# this replaces spaces with underscores in filenames
for f in ./*
do
  if [[ -f $f ]];then
    newname=$(echo $f | sed "s/ /_/g")
    mv $f $newname
  fi
done
