function e_header()   { echo -e "\n\033[1m$@\033[0m"; }
function e_success()  { echo -e " \033[1;32m✔\033[0m  $@"; }
function e_error()    { echo -e " \033[1;31m✖\033[0m  $@"; }
function e_warning()  { echo -e " \033[1;33m⚠️\033[0m  $@"; }
function e_arrow()    { echo -e " \033[1;34m➜\033[0m  $@"; }
function e_option()   { echo -e " \033[1;37m○\033[0m  $@"; }

e_success "Skipping ~/.bashrc, same file."
e_warning "Skipping ~/.bashrc, destination file newer."
e_option " 1) 10_osx_xcode.sh"
e_success " 2) 20_osx_homebrew.sh"
