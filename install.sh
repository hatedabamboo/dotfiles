#!/bin/bash

DIR=$(dirname "$(readlink -f \"$0\")")

cd $DIR
for file in $(find -maxdepth 1 -type f -name '.*'); do
  cp $file ~/
  source ~/$file
done
exit 0
