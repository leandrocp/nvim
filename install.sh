#!/bin/sh

# https://github.com/thoughtbot/dotfiles/blob/master/install.sh

function install() {
  declare -a files=(nvimrc gvimrc)

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

install
