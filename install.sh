#!/usr/bin/env bash

set -euo pipefail

DIR=$(dirname "$(readlink -f \"$0\")")

cd $DIR

for file in $(find . -maxdepth 1 -type f -name '.*'); do
  cp ${file} ~/
done

cp -ra .exe/ ~/

echo -e "Now run:\nsource ~/.bashrc"

exit 0
