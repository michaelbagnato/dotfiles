#! /usr/bin/zsh

function installPackage {
	packageName=$1
	distro=$(cat /etc/*-release | head -1)
	
	if [ $distro = 'Manjaro Linux' ]; then
		sudo pacman -Sy packageName
	fi;
}

# Setup neovim
installPackage neovim
cd ~
ln -sv ~/dotfiles/vim.lua vim.lua
ln -sv ~/dotfiles/vimConfig vimConfig
mkdir ~/.config/nvim
touch ~/.config/nvim/init.lua
echo "package.path = package.path .. ';/home/michael/?.lua'" >> ~/.config/nvim/init.lua
echo "require('vim')" >> ~/.config/nvim/init.lua


# Setup terminator
installPackage terminator
cd ~/.config
ln -sv ~/dotfiles/terminator terminator

