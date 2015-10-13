#!/bin/bash
set -e

WORKSPACE=${@:-$HOME}
WORKSPACE="${WORKSPACE/#\~/$HOME}"

PARAMS="$PARAMS -it --rm"
PARAMS="$PARAMS -w /workspace"
PARAMS="$PARAMS -v $WORKSPACE:/workspace"

docker run $PARAMS mbed/yotta