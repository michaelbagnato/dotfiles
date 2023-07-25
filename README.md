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


### Oh My Zsh
Install Oh My Zsh following the instructions on their website.

Delete the `.zshrc` file created during the installation process, and instead create a symlink to the one here:
```zsh
cd ~
ln -sv ~/dotfiles/zshrc .zshrc
```

Create a symlink to the powerlevel10k theme:
```zsh
cd ~/.oh-my-zsh/custom/themes/
ln -sv ~/dotfiles/themes/powerlevel10k/ powerlevel10k
```

Go back into the dotfiles directory, and setup the submodules in the repo as they contain the theming:
```zsh
cd ~/dotfiles
git submodule init
git submodule update
```

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
Make sure rofi and volumeicon are installed:
```zsh
sudo pacman -S rofi volumeicon
```

Create a symlink to the awesome folder in your .config file:
```zsh
cd ~/.config
ln -sv ~/dotfiles/awesome awesome
```

Put your preferred wallpaper in your Pictures directory and make sure it's called Wallpaper.jpg

Restart Awesome
