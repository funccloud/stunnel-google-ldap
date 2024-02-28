#!/bin/sh

DIR=$1
CONF_TEMPLATE=$2
CONF_PROD=$3

CRT=$(ls -1 $DIR/*.crt | head -n 1)
KEY=$(ls -1 $DIR/*.key | head -n 1)

sed -e "s;%CRT%;$CRT;" -e "s;%KEY%;$KEY;" "$CONF_TEMPLATE" > "$CONF_PROD"
