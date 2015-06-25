#!/usr/bin/env bash
cd "$(dirname "${BASH_SOURCE}")"

function doIt() {
  DRY_RUN=${1:-"--dry-run"}
  rsync $1 --exclude ".git/" --exclude ".DS_Store" --exclude "bootstrap.sh" \
    --exclude "README.md" --exclude "LICENSE-GPL.txt" \
    --exclude ".git" --exclude ".gitattributes" --exclude ".gitconfig" \
    --exclude ".vim" \
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

  read -p "Remove current ~/.vim and ~/.vimrc and install Pivotal Vim config? (y/N)" -n 1
  echo
  if [[ $REPLY =~ ^[Yy]$ ]]; then
    rm ~/.vimrc
    rm -rf ~/.vim
    rsync --include ".vim" -av --no-perms . ~
    ~/.vim/bin/install
  fi
fi

unset doIt
source ~/.bash_profile

