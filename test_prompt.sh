#!/bin/bash
export DOTFILES=$PWD
source bin/dotfiles source
menu_options=("option 1" "option 2")
menu_selects=("option 2")
prompt_menu "Test menu" 1
