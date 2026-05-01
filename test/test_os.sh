#!/usr/bin/env bash
source $DOTFILES/source/00_dotfiles.sh

e_header "$(basename "$0" .sh)"

# Test is_ubuntu
e_header "is_ubuntu"

# Case 1: /etc/issue contains "Ubuntu"
(
  function cat() { echo "Ubuntu 24.04.4 LTS"; }
  export -f cat
  is_ubuntu
  assert "$?" "0"
)

# Case 2: /etc/issue does not contain "Ubuntu"
(
  function cat() { echo "Debian GNU/Linux 12"; }
  export -f cat
  is_ubuntu
  assert "$?" "1"
)

# Case 3: /etc/issue is empty
(
  function cat() { echo ""; }
  export -f cat
  is_ubuntu
  assert "$?" "1"
)

# Case 4: cat fails (e.g. file not found)
(
  function cat() { return 1; }
  export -f cat
  is_ubuntu
  assert "$?" "1"
)
