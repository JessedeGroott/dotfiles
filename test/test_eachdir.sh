#!/usr/bin/env bash
export DOTFILES=$PWD
source $DOTFILES/source/00_dotfiles.sh

e_header "$(basename "$0" .sh)"

mkdir -p test_dir/a test_dir/b
touch "test_dir/a/file 1" "test_dir/b/file 2"

# test eachdir with single command
output=$(bin/eachdir test_dir/a -- echo "hello")
actual="$(echo "$output" | sed -n '2p')"
expected="hello"
assert "$expected" "$actual"

# test eachdir with multiple arguments including spaces
output=$(bin/eachdir test_dir/a -- ls "file 1")
actual="$(echo "$output" | sed -n '2p')"
expected="file 1"
assert "$expected" "$actual"

rm -rf test_dir
