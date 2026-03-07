source bin/dotfiles source
menu_options=("10_osx_xcode.sh" "20_osx_homebrew.sh" "30_osx_homebrew_casks.sh")
menu_labels=("OSX Xcode" "OSX Homebrew" "OSX Homebrew Casks")
menu_selects=("20_osx_homebrew.sh" "30_osx_homebrew_casks.sh")
function e_option() { echo -e " \033[1;37m○\033[0m  $@"; }

function _prompt_menu_draw() {
  local modes=(option success)
  local label="${menu_labels[$2]:-${menu_options[$2]}}"
  if [[ "$3" ]]; then
    e_${modes[$1]} "$(printf "%2d) %s\n" $(($2+1)) "$label")"
  else
    e_${modes[$1]} "$label"
  fi
}

_prompt_menu_draws "Run the following init scripts?" 1
