#!/bin/bash
# this script prints the version of itself
first_arg=$1
echo you passed $first_arg to the script

VERSION=1.0
version() {
  echo \$VERSION is $VERSION
}

cleanup() {
  local dir_to_clean=$1
  echo Running cleanup...
  echo removing files from $dir_to_clean/*
  return 55
}

version
# this only runs when theres a problem
cleanup /tmp
