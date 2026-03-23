#!/usr/bin/env bash

# Mock dotfiles
export DOTFILES=$PWD

source bin/dotfiles ""

mkdir -p "$DOTFILES/mock_test"
touch "$DOTFILES/mock_test/file1"
touch "$DOTFILES/mock_test/file2"

# Mock the functions for do_stuff
mock_test_files() { echo "$DOTFILES/mock_test/file1" "$DOTFILES/mock_test/file2"; }
mock_test_test() {
  if [[ "$1" == *file1 ]]; then
    echo "same file"
  else
    echo "destination file newer"
  fi
}
mock_test_do() { :; }

do_stuff mock_test
