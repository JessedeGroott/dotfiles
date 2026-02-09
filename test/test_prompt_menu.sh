#!/usr/bin/env bash
source bin/dotfiles source

# Setup test data
# These arrays are expected by _prompt_menu_draw
menu_options=("10_osx_xcode.sh" "20_ubuntu_apt.sh")
menu_labels=("Osx Xcode" "Ubuntu Apt")

# Capture output of _prompt_menu_draw
# _prompt_menu_draw mode(0=error, 1=success) index
# Note: mode 0 in bin/dotfiles maps to e_error (red X)
#       mode 1 in bin/dotfiles maps to e_success (green check)

output=$(_prompt_menu_draw 1 0)

# Check output contains "Osx Xcode"
echo "Output: $output"
if [[ "$output" == *"Osx Xcode"* ]]; then
  echo "PASS: found label for index 0"
else
  echo "FAIL: expected label for index 0, got $output"
  exit 1
fi

# Test fallback if label is missing
menu_labels[1]=""
output=$(_prompt_menu_draw 1 1)
echo "Output: $output"
if [[ "$output" == *"20_ubuntu_apt.sh"* ]]; then
  echo "PASS: fallback to filename for index 1"
else
  echo "FAIL: expected filename fallback for index 1, got $output"
  exit 1
fi
