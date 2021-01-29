#!/bin/bash
# This saves command output to a variable
scriptpath="/Users/goku/cmd_output_vars.sh"
filename=$(basename $scriptpath)
echo \$filename is $filename
if [[ $filename = cmd_output_vars.sh ]]; then
  echo the filename matches
fi

if [[ -f $filename ]]; then
  echo its a file
else
  echo its not a file
fi
