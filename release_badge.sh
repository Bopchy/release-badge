#!/bin/bash
# Usage: ./release_badge.sh -v version -t tag -l link

# Set default variable values
TITLE="Release"
VERSION="0.0.0"
TAG=""
LINK="https://github.com"

# Process CLI values
while [[ $# > 1 ]]
do
key="$1"

case $key in
    -v|--version)
    VERSION="$2"
    shift 
    ;;
    -t|--tag)
    TAG="$2"
    shift 
    ;;
    -l|--link)
    LINK="$2"
    shift 
    ;;
    *)
       
    ;;
esac
shift 
done
if [[ TAG -eq "" ]]; 
then
    echo "[![Github Release](https://img.shields.io/badge/Release-v${VERSION}--${TAG}-blue.svg)](${LINK})"
else
    echo "[![Github Release](https://img.shields.io/badge/Release-v${VERSION}-blue.svg)](${LINK})"
fi
