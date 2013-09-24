#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"
#git pull origin master
function doIt() {
  DRY_RUN=${1:-"--dry-run"}
  rsync $1 --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
    --exclude "README.md" --exclude "LICENSE-GPL.txt" --exclude ".vim" --exclude ".vimrc" \
    --exclude ".gitattributes" --exclude ".gitconfig" --exclude ".vim" --exclude ".vimrc" \
    --exclude "LICENSE-MIT.txt" -av --no-perms . ~
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
  doIt
else
  echo "The following file(s) will be affected."
  doIt
  read -p "Are you sure? (y/n) " -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    doIt ""
  fi
fi
unset doIt
source ~/.bash_profile
