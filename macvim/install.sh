#!/bin/sh

# Makefile for https://github.com/razeencheng/dotfiles/vimrc
# Maintainer me@razeen.me
# Fork https://github.com/deepzz0/dotfiles/blob/master/macvim/install.sh
# 
# Dependencies:
#   Mac:
#     * Homebrew/brew

set -e

_green() {
  printf '\033[1;31;32m%b\033[0m\n' "$1"
}

_red() {
  printf '\033[1;31;40m%b\033[0m\n' "$1"
}

_exists() {
  cmd="$1"
  if [ -z "$cmd" ]; then
    _red "Usage: _exists cmd"
    return 1
  fi

  if eval type type >/dev/null 2>&1; then
    eval type "$cmd" >/dev/null 2>&1
  elif command >/dev/null 2>&1; then
    command -v "$cmd" >/dev/null 2>&1
  else
    which "$cmd" >/dev/null 2>&1
  fi
  return "$?"
}

main() {
  if [ "$(uname -s)" != "Darwin" ]; then
    _red "Unsupported operating system, Darwin?";
    return 1;
  fi
  if _exists "mvim"; then
    if [ -f ~/.vimrc ]; then
      mv ~/.vimrc ~/.vimrc.bak;
    fi
    curl https://raw.githubusercontent.com/razeencheng/dotfiles/master/macvim/vimrc -o ~/.vimrc
  else
    _red "Not found macvim, brew install macvim?"
    return 1;
  fi
  _green "Vim config is installed to ~/.vimrc."
}

main "$@"