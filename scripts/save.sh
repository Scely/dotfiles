#!/bin/sh

cd sources && \
find . -type f -exec sh -c '
    mkdir -p $(dirname "$1") && 
    ln -sf "$(realpath -s "$0")" "$(realpath -s "$1")"
' "$PWD/{}" "$HOME/{}" \;
