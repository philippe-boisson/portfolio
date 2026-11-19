#!/bin/bash

# set -x

git pull || {
    echo -e 'Failed to pull new changes\n' 
    exit 1
}

git add -A || {
    echo -e 'No changes to add\n' 
    exit 1
}

git commit -m "changes from $(uname -n) on $(date +'%Y%m%d-%H%M%S')" || {
    echo -e 'Failed to commit new changes\n'
    exit 1
}

git push || {
    echo -e "Failed to push new changes\n"
    exit 1
}

echo "OK"
