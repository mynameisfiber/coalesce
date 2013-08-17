#!/bin/bash
# Make sure all json in this branch is valid using python's json module

PYTHON=$( which python2.7 )
if [ -z $PYTHON ]; then
    echo "python2.7 not found";
fi

find . -name \*.json | (
    while read FILENAME; do
        printf "%-56s " "$FILENAME "
        cat $FILENAME | $PYTHON -m json.tool > /dev/null 2>&1
        if [ $? == 0 ]; then
            echo "[GOOD]";
        else
            echo "[FAIL]";
            exit;
        fi;
    done;
)
