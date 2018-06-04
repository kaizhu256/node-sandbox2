#!/bin/sh
shMain () {(set -e
# this function will run the main program
    if [ ! "$TRAVIS" ]
    then
        printf "not \$TRAVIS env\n"
        return
    fi
    . node_modules/utility2/lib.utility2.sh
    printf "hello '$USER'\n"
    printf "bye '$USER'\n"
)}
shMain
