#!/bin/bash

NAME="$1"

if [ -z "$NAME" ]; then
    echo "Usage: $0 <name>"
    exit 1
fi

echo "Hello, $NAME!"
