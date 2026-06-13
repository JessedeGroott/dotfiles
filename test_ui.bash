source bin/dotfiles source

menu_options=("10_osx_xcode.sh" "20_ubuntu_apt.sh" "50_node.sh")

_prompt_menu_draw 0 0 "yes"
_prompt_menu_draw 1 1 "yes"
_prompt_menu_draw 0 2 "yes"

e_success "Success test"
e_error "Error test"
e_warning "Warning test"
