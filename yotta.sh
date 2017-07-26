#!/bin/bash
set -e

DOCKER_IMAGE=mbed/yotta

USER_ID=$(id -u)
GROUP_ID=$(id -g)
WORK_DIR="$PWD"
INT_SETTINGS_DIR="$HOME/.yotta"
EXT_SETTINGS_DIR=${YOTTA_USER_SETTINGS_DIR:-"$HOME/.yotta"}

PARAMS="$PARAMS -it --rm"
PARAMS="$PARAMS -e YOTTA_USER_SETTINGS_DIR=$INT_SETTINGS_DIR"
PARAMS="$PARAMS -u $USER_ID:$GROUP_ID"
PARAMS="$PARAMS -v $EXT_SETTINGS_DIR:$INT_SETTINGS_DIR"
PARAMS="$PARAMS -v $PWD:$WORK_DIR"
PARAMS="$PARAMS -v /etc/passwd:/etc/passwd:ro"
PARAMS="$PARAMS -v /etc/shadow:/etc/shadow:ro"
PARAMS="$PARAMS -v /etc/group:/etc/group:ro"
PARAMS="$PARAMS -w $WORK_DIR"

if [ -z "$DOCKER_HOST" ]; then
    eval docker run $PARAMS $DOCKER_IMAGE /bin/bash -ci "'yotta $@'"
else
    eval docker run $PARAMS $DOCKER_IMAGE yotta $@
fi
