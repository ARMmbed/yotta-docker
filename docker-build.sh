#!/bin/bash
set -e

docker build "$@" -t mbed/yotta .