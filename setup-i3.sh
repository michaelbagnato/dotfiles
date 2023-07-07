#! /usr/bin/bash

function installPackage {
	packageName=$1
	distro=$(cat /etc/*-release | head -1)
	echo "Installing $packageName"	
	if [[ $distro == 'Manjaro Linux' || $distro == 'Arch Linux' ]]; then
		sudo pacman -S $packageName --noconfirm
	fi;
}


if [[ ! -v SUDO_USER ]]; then
	echo "Must run this script as sudo!"
	exit
fi

homeDirectory="/home/$SUDO_USER"
dotfilesDirectory="$homeDirectory/dotfiles"

# Setup neovim
echo -n "Checking if neovim is installed..."
if ! command -v nvim &> /dev/null; then
	echo "missing!"
	installPackage neovim
	cd $homeDirectory
	ln -sv "$dotfilesDirectory/vim.lua" vim.lua
	ln -sv "$dotfilesDirectory/vimConfig" vimConfig
	mkdir "$homeDirectory/.config/nvim"
	touch "$homeDirectory/.config/nvim/init.lua"
	echo "package.path = package.path .. ';/home/$SUDO_USER/?.lua'" >> "$homeDirectory/.config/nvim/init.lua"
	echo "require('vim')" >> "$homeDirectory/.config/nvim/init.lua"
else
	echo "already installed!"
fi

# Setup Zsh
echo -n "Checking if zsh is installed..."
if ! command -v zsh &> /dev/null; then
	echo "missing!"
	installPackage zsh
	cd $homeDirectory
else
	echo "already installed!"
fi

# Setup yay
echo -n "Checking if yay is installed..."
if ! command -v yay &> /dev/null; then

	echo "missing"
	installPackage yay
else
	echo "already installed!"
fi

# Setup kitty
echo -n "Checking if kitty is installed..."
if ! command -v kitty &> /dev/null; then
	echo "missing"
	installPackage kitty
else
	echo "already installed"
fi
cd "$homeDirectory/.config/kitty"
ln -sv "$dotfilesDirectory/kitty" kitty.conf

# Setup dotfile submodules
echo "Setting up dotfile submodules"
cd $dotfilesDirectory
git submodule init
git submodule update

echo "Please note that installing Oh my Zsh doesn't work with this script."
echo "You'll need to do that yourself, but we'll set the P10K config symlink for you"
cd "$homeDirectory/.oh-my-zsh/custom/themes
ln -sv "$dotfilesDirectory/themes/powerlevel10k" powerlevel10k
