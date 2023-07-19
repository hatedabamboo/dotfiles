#!/usr/bin/env bash

DIR=$(dirname "$(readlink -f \"$0\")")

cd $DIR
for file in $(find . -maxdepth 1 -type f -name '.*'); do
  cp ${file} ~/
done
echo -e "Now run:\nsource ~/.bashrc"

exit 0
