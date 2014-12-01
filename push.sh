#!/bin/bash
NAME=$1
for dir in $(find ./* -maxdepth 0 -type d | sed 's/\.\///') ; do
  if [ -z "$NAME" ] || [ "$NAME" == "$dir" ]; then
    echo "Pushing $dir."
    docker push dlip/$dir
  fi
  #if [ $? -ne 0 ]; then
    #echo "Push fail."
    #exit 1
  #fi
done
