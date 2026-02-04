#!/usr/bin/env bash
export DOTFILES=${DOTFILES:-$(pwd)}
ORIGINAL_DOTFILES=$DOTFILES

source $DOTFILES/source/00_dotfiles.sh

# Restore DOTFILES (because bin/dotfiles overrides it to ~/.dotfiles)
export DOTFILES=$ORIGINAL_DOTFILES

e_header "$(basename "$0" .sh)"

function test_assert() { assert "$actual" "$expected"; }

# Define mock function to replace the alias usage in the script
function __prompt_get_colors() {
  c2="[RED]"
  c9="[RESET]"
}

# Ensure PROMPT_COMMAND is unset so the script loads
unset PROMPT_COMMAND
source $DOTFILES/source/50_prompt.sh

e_header "__prompt_exit_code"

# Test success (should be empty)
actual="$(__prompt_exit_code 0)"
expected=""
test_assert

# Test failure (should have symbol)
actual="$(__prompt_exit_code 1)"
expected=" [RED]✖ 1[RESET]"
test_assert
