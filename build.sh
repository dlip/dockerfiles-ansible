#!/bin/bash
NAME=$1
for dir in $(find ./* -maxdepth 0 -type d | sed 's/\.\///') ; do
  if [ -z "$NAME" ] || [ "$NAME" == "$dir" ]; then
    echo "Building $dir."
    docker build -t dlip/$dir $dir
  fi
  if [ $? -ne 0 ]; then
    echo "Build fail."
    exit 1
  fi
done
