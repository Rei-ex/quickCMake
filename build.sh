#!/bin/sh -e
cp -r ~/quickCMake/def/. -t .
clang-format -style=LLVM -dump-config > .clang-format
cp -f ~/quickCMake/def/.clang-format .clang-format
mkdir build
chmod u+x ./exe/config.sh
chmod u+x ./exe/build.sh
./exe/config.sh
ln -s ./build/compile_commands.json .
./exe/build.sh

git init
git add .
git commit -m "Initial commit"

echo "\n"
./build/test
cat ~/quickCMake/def/git_use_exmp.txt