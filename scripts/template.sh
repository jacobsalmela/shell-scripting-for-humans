#!/bin/bash
# this is a template script
trap 'info Cancelling...' SIGINT

VERSION=1.0
version() {
  echo $VERSION
}

cleanup() {
  local dir_to_clean=$1
  echo Running cleanup...
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

if [[ "$OSTYPE" == "linux-gnu"* ]]; then
  echo "Linux detected"
elif [[ "$OSTYPE" == "darwin"* ]]; then
  echo "macOS detected"
elif [[ "$OSTYPE" == "cygwin"* ]]; then
  echo "POSIX compatiblity layer or Linux emulation for Windows detected"
elif [[ "$OSTYPE" == "mysys"* ]]; then
  echo "Lightweight shell and GNU utilities compiled for Windows detected"
elif [[ "$OSTYPE" == "freebsd"* ]]; then
  echo "BSD detected"
else
  echo "Unknown OS, exiting"
  exit 2
fi

case $OSTYPE in
  "linux-gnu"*) echo "Do linux stuff" ;;
  "darwin"*) echo "Do macOS stuff" ;;
  "cygwin"*) echo "Do cygwin stuff" ;;
  "mysys"*) echo "Do mysys stuff" ;;
  "freebsd"*) echo "Do bsd stuff" ;;
  *) echo "Unknown OS, cannot continue" ;;
esac

# do stuff here: functions and other code
