#!/bin/bash

# set -x

git pull && \
    git add -A || {
        echo "no changes to add" 
        exit 1
    }

git commit -m "changes from $(uname -n) on $(date +'%Y%m%d-%H%M%S')" || {
    echo "Failed to commit new changes"
    exit 1
}

git push || {
    echo "Failed to push new changes"
    exit 1
}

echo "OK"
