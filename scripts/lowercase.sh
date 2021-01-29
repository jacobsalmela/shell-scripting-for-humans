#!/bin/bash
# this renames files to all lowercase
for f in ./IMG*
do
  if [[ -f $f ]];then
    newname=$(echo $f | tr '[A-Z]' '[a-z]')
    mv $f $newname
  fi
done
