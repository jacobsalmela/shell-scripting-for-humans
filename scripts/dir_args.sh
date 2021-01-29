#!/bin/bash
# this takes an arguments and displays only dirs
search_dir=$1
second_arg=$2

if [[ -f $search_dir ]];then
  echo You need to pass a directory for this script, try $(dirname $search_dir)
  exit 43
fi

for d in $search_dir/*
do
  if [[ -d $d ]];then
    echo $d
  else
    :
  fi
done
