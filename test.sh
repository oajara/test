#!/bin/bash

# Update our Docker Image if our package.json/run.sh/Dockerfile has changed
for i in $(git log -m -1 --name-only --pretty="format:"); do
  if [[ "$i" == *"a.txt"* || "$i" == *"b.txt"* || "$i" == *"c.txt"* ]]; then
    echo "Running due to $i"
  fi
done
