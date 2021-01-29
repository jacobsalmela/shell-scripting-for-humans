#!/bin/bash
# this changes file extensions from py to sh
for f in $(pwd)/*
do
  if [[ -f $f ]];then
    ext=$(echo $f | cut -d '.' -f 2)
    echo $f \$ext is $ext
    if [[ $ext == py ]]; then
      echo changing $ext to sh...
      fname=$(echo $f | cut -d '.' -f 1)
      mv $f $fname.sh
    fi
  fi
done
