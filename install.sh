#!/usr/bin/env bash

set -euo pipefail

DIR=$(dirname "$(readlink -f \"$0\")")

cd $DIR

for file in $(find . -maxdepth 1 -type f -name '.*'); do
  cp ${file} ~/
done

if [ "$(uname -s)" == "Darwin" ]; then
  cp -a .exe/ ~/
else
  cp -ra .exe/ ~/
fi

echo -e "Now run:\nsource ~/.bashrc"

exit 0
