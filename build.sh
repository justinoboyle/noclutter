#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
cd $DIR

echo Build starting...
echo Project Folder: $DIR
echo ""
echo Clearing old builds...
rm -rf temp/
rm -rf build/
mkdir temp
mkdir build
if [ ! -f /bin/nwjs.app ]; then
    bash ./scripts/fetchDepend.sh
fi
echo ""
echo Compressing project...
zip -r ./temp/${PWD##*/}.nw * -x "./scripts/*" "./temp/*" "./build/*" "./bin/*" "./build.sh"

