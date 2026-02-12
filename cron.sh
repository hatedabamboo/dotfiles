#!/bin/bash

set -euo pipefail

die() {
  echo "$@"
  exit 1
}

found() {
  notify-send -u normal -a "dotfiles cron" "Your local and tracked dotfiles differ." "Your local and remote dotfiles differ. Did you forget to commit them?"
  exit 2
}

cd -- $(dirname -- $(readlink -f ${BASH_SOURCE[0]})) || die "Unable to cd to the directory" 

for file in $(find . -type f -not -path './.git/*' -not -name README.md -not -name install.sh -not -path './systemd/*'); do
  diff -q  "$file" "$HOME/$file" &>/dev/null || found
done

exit 0
