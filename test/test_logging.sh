#!/usr/bin/env bash
# We source bin/dotfiles directly to test the function.
# We don't care about DOTFILES env var reset for this unit test.
source ./bin/dotfiles "source"

# Mock the effect of e_warning to capture output or just run it to ensure no errors.
# For a simple verification, we will verify the output contains the escape codes.
output=$(e_warning "Test Warning")
# Check for Yellow color code (33m) and the exclamation mark
if [[ "$output" == *"[1;33m!"* && "$output" == *"Test Warning"* ]]; then
  echo "Test Passed: e_warning output looks correct."
else
  echo "Test Failed: Output was '$output'"
  exit 1
fi
