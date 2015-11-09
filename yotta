#!/bin/bash
set -e

folder=`basename $PWD`

PARAMS="$PARAMS -it --rm"
PARAMS="$PARAMS -w /$folder"
PARAMS="$PARAMS -v $PWD:/$folder"
PARAMS="$PARAMS --entrypoint yotta"
PARAMS="$PARAMS -e MBED_USER_ID=yocker"

docker run $PARAMS mbed/yotta $@
