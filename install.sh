#!/bin/sh

# https://github.com/thoughtbot/dotfiles/blob/master/install.sh

function install() {
  declare -a files=(vimrc gvimrc mswinrc)

  for name in ${files[@]}; do
    target="$HOME/.$name"

    rm -rf "$target"
    if [[ "$OSTYPE" == "cygwin" ]]; then
      echo "cp -R "$PWD/$name" "$target""
      cp -R "$PWD/$name" "$target"
    else
      echo "ln -s "$PWD/$name" "$target""
      ln -s "$PWD/$name" "$target"
    fi
  done
}

#read -p "This action will replace all target files. Are you sure? (y/n) " -n 1
#echo
#if [[ $REPLY =~ ^[Yy]$ ]]; then
install
#fi
