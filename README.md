# These are my dotfiles 
In here you'll find a few config files that make my life easier and just 
generally keep my laptop going.

## How to use these files
Clone this repo, and put it in your home directory.
The instructions from here are assuming you're running Arch Linux.


### Terminator
You'll need to have terminator installed:
```zsh
sudo pacman -S terminator
```

Create a symlink in your .config directory to the terminator directory:
```zsh
cd ~/.config
ln -sv ~/dotfiles/terminator terminator
```
If you have terminator open, restart it.


### Neovim
You'll need to have Neovim installed:
```zsh
sudo pacman -S neovim
```

You'll also need to get the Packer plugin from the AUR.  Details of the AUR package are available [here](https://aur.archlinux.org/packages/nvim-packer-git)

Create a symlink in your .config directory to the nvim directory
```zsh
cd ~/.config/
ln -sv ~/dotfiles/nvim nvim
```
Open nvim and run `:PackerInstall`, then `:COQdeps`


### Awesome
Make sure rofi, volumeicon and i3lock-color are installed:
```zsh
sudo pacman -S rofi volumeicon
```

You'll also need to get i3lock-color from the AUR.  Details of the AUR package are available [here](https://aur.archlinux.org/packages/i3lock-color)

Create a symlink to the awesome folder in your .config file:
```zsh
cd ~/.config
ln -sv ~/dotfiles/awesome awesome
```

Put your preferred wallpaper in your Pictures directory and make sure it's called Wallpaper.jpg

Restart Awesome
