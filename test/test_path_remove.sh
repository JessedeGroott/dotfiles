#!/usr/bin/env bash
source ${DOTFILES:-$PWD}/source/00_dotfiles.sh

e_header "$(basename "$0" .sh)"

ORIG_PATH="$PATH"
function test_path_remove() {
  PATH="$1"; shift
  path_remove "$@"
}

assert "/a/b:/a/b/c:/a/b:/a/b/d" "$(test_path_remove "/a/b:/a/b/c:/a/b:/a/b/d" /a)"
assert "/a/b:/a/b/c:/a/b:/a/b/d" "$(test_path_remove "/a/b:/a/b/c:/a/b:/a/b/d" /a/b/c/d)"
assert "/a/b/c:/a/b/d" "$(test_path_remove "/a/b:/a/b/c:/a/b:/a/b/d" /a/b)"
assert "/a/b:/a/b:/a/b/d" "$(test_path_remove "/a/b:/a/b/c:/a/b:/a/b/d" /a/b/c)"
assert "/a/b:/a/b/c:/a/b" "$(test_path_remove "/a/b:/a/b/c:/a/b:/a/b/d" /a/b/d)"

assert "/a/b:/a/b c/d:/a/b:/a/b c/e" "$(test_path_remove "/a/b:/a/b c/d:/a/b:/a/b c/e" /a)"
assert "/a/b:/a/b c/d:/a/b:/a/b c/e" "$(test_path_remove "/a/b:/a/b c/d:/a/b:/a/b c/e" /a/b/c/d)"
assert "/a/b c/d:/a/b c/e" "$(test_path_remove "/a/b:/a/b c/d:/a/b:/a/b c/e" /a/b)"
assert "/a/b:/a/b:/a/b c/e" "$(test_path_remove "/a/b:/a/b c/d:/a/b:/a/b c/e" "/a/b c/d")"
assert "/a/b:/a/b c/d:/a/b" "$(test_path_remove "/a/b:/a/b c/d:/a/b:/a/b c/e" "/a/b c/e")"

assert "/a/b:/x:/y:/z" "$(test_path_remove "/a/b:/a/b/c:/x:/a/b/d:/y:/a/b/e:/z" /a/b/c /a/b/d /a/b/e)"
