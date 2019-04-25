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

    URL=https://datalakecadg.mprj.mp.br/api/upload/

    TMPNAME=/tmp/$(uuidgen)

    echo "Compressing file...\n"
    gzip -c -k $FILEPATH > $TMPNAME

    echo "Calculating MD5 checksum...\n"
    MD5=$(md5sum $TMPNAME | cut -d ' ' -f 1)

    if [ "$FILENAME" == "" ]
    then
        BASENAME=$(basename $FILEPATH)
        FILENAME=$(echo "$BASENAME" | sed "s/.csv/_$(date +'%Y%m%d%H%M%S.csv.gz')/")
    fi

    echo "Sending file..."
    #SEND DATA
	curl -X POST \
	  $URL \
	  -F SECRET=$SECRETKEY \
	  -F nome=$USERNAME \
	  -F filename=$FILENAME \
	  -F method=$METHODNAME \
	  -F md5=$MD5 \
	  -F file=@$TMPNAME

    echo "\n"
    echo "Removing temporary file $TMPNAME"
    rm $TMPNAME

fi
