# These are my dotfiles 
In here you'll find a few config files that make my life easier and just 
generally keep my laptop going.

## How to use these files
These instructions assume you are using Arch Linux.

Clone the repo and place it in your home directory.

Install the following applications:
- Screenshot tool: Grim
- Shell: Fish
- Terminal: Kitty 
- Text editor: Neovim
- Volume control: Amixer
- Window manager: Qtile
- Application launcher: Rofi
- Clipboard management: wl-clipboard
- Power management: power-profiles-daemon
- Screen locker: Swaylock

Install GNU Stow:
```fish
sudo pacman -S stow
```

Run Stow on the directory:
```fish
cd ~/dotfiles
stow .
```
Put your wallpaper picture in your home directory and name it Wallpaper.png.
