#!/bin/bash


if [ "$1" == "-h" ] || [ "$1" == "--help" ] || [ "$1" == "" ]
then
    echo "Usage: FILEPATH METHODNAME USERNAME SECRETKEY [FILENAME]"
else

    FILEPATH=$1
    METHODNAME=$2
    USERNAME=$3
    SECRETKEY=$4
    FILENAME=$5

    python modelo.py $FILEPATH $METHODNAME $USERNAME $SECRETKEY $FILENAME
fi
