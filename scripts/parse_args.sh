#!/bin/bash
# this script prints the version of itself
# run this when someone presses Ctrl+c
trap 'info Cancelling...' SIGINT

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

DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" >/dev/null 2>&1 && pwd)"
readonly LOG_FILE="$DIR/$(basename "${0%.*}").log"

info()    { echo "[INFO]    $*" | tee -a "$LOG_FILE" >&2 ; }
warn()    { echo "[WARN]    $*" | tee -a "$LOG_FILE" >&2 ; }
debug()   { echo "[DEBUG]   $*" | tee -a "$LOG_FILE" >&2 ; }

while getopts ":be" opt
do
  case ${opt} in
    b) info "-b flag passed!" ;;
    e) info "-e flag passed!" ;;
    *) usage ;;
  esac
done

sleep 15 
