#!/bin/bash
# this script prints the version of itself

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

# anything below this line with a #/ will show up in the usage line
#/ Usage: usage.sh [--help] [--version]
#/ A command line script that does something

usage() {
  grep '^#/' "$0" | cut -c4-
}


expr "$*" : ".*--help" > /dev/null && usage
expr "$*" : ".*--version" > /dev/null && version
