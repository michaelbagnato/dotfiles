# These are my dotfiles 
In here you'll find a few config files that make my life easier and just 
generally keep my laptop going.

## How to use these files
These instructions assume you are using Arch Linux.

Clone the repo and place it in your home directory.

Install the applications that you want to use with these files.  Applications 
covered are:
    * Screenshot tool: Grim
    * Shell: Fish
    * Terminal: Kitty 
    * Text editor: Neovim
    * Volume control: Amixer
    * Window manager: Qtile

Install GNU Stow:
```fish
sudo pacman -S stow
```

Run Stow on the directory:
```fish
cd ~/dotfiles
stow .
```
