#!/usr/bin/env bash

set -e
FILENAME=$1

if [ -z $FILENAME ]; then
  echo 'The path to the file is required'
  exit 1
fi

while IFS='=' read -r -a var; do
  echo "Setting ${var[0]} to ${var[1]} "
  echo ${var[1]} | wc -l
  sed -i '' "s|$(printf '%s\n' "\${${var[0]}}" | sed -e 's/[]\/$*.^[]/\\&/g')|${var[1]}|g" $FILENAME
done < <(printenv)
