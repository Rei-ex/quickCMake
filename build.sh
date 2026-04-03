#!/bin/sh -e
cp -r ~/quickCMake/def/. -t .
mkdir build
chmod u+x ./exe/config.sh
chmod u+x ./exe/build.sh
./exe/config.sh
ln -s ./build/compile_commands.json .
./exe/build.sh

echo "\n"
./build/test
cat ~/quickCMake/def/git_use_exmp.txt
