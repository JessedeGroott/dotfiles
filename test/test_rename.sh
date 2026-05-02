#!/bin/bash

# Helper for assertions
function assert() {
  if [[ "$1" == "$2" ]]; then
    echo "  [PASS] $3"
  else
    echo "  [FAIL] $3: Expected '$2', got '$1'"
    exit 1
  fi
}

echo "Testing bin/rename core functionality..."

# Setup temporary test directory
TEST_DIR=$(mktemp -d)
cd "$TEST_DIR" || exit 1
DOTFILES_ROOT=$(cd -P -- "$OLDPWD" && pwd)
RENAME="$DOTFILES_ROOT/bin/rename"

# Test 1: Simple substitution (-s)
touch test_foo
perl "$RENAME" -s foo bar test_foo
[[ -f test_bar ]] && PASS=1 || PASS=0
assert "$PASS" "1" "Simple substitution (-s)"
rm test_bar

# Test 2: Regex expression (-e)
touch file123
perl "$RENAME" -e 's/\d+/NUM/' file123
[[ -f fileNUM ]] && PASS=1 || PASS=0
assert "$PASS" "1" "Regex expression (-e)"
rm fileNUM

# Test 3: Regex with /e (-e)
touch file10
perl "$RENAME" -e 's/(\d+)/$1*2/e' file10
[[ -f file20 ]] && PASS=1 || PASS=0
assert "$PASS" "1" "Regex with /e (-e)"
rm file20

# Test 4: Case conversion (-c)
touch FILE_NAME
perl "$RENAME" -c FILE_NAME
[[ -f file_name ]] && PASS=1 || PASS=0
assert "$PASS" "1" "Case conversion (-c)"
rm file_name

# Test 5: Sanitization (-z)
touch "file with blanks & chars!"
perl "$RENAME" -z "file with blanks & chars!"
# The expected result of sanitization is 'file_with_blanks_chars_' based on manual verification
[[ -f file_with_blanks_chars_ ]] && PASS=1 || PASS=0
assert "$PASS" "1" "Sanitization (-z)"
rm file_with_blanks_chars_

# Cleanup
cd "$DOTFILES_ROOT"
rm -rf "$TEST_DIR"

echo "All rename tests passed!"
