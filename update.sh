#!/bin/bash
set -x
git pull && \
git add . || {
  echo "no changes to add" 
  exit 1
}

git commit -m "update" \
git push && echo "OK"
