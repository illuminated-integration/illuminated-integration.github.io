#! /bin/bash

SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

echo $SCRIPT_DIR

cd $1
flutter build web
cp -r build/web/* $SCRIPT_DIR
cd $SCRIPT_DIR
