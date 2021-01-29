
#!/bin/bash
# This detects different OSes

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
