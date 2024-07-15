# Disables the greeting message
set -U fish_greeting

# Sets the theme
fish_config theme choose "Dracula"

# Aliases
alias upgrade="yay -Syu"
alias %="fg"
alias uefi-update="fwupdmgr refresh --force && fwupdmgr update"
