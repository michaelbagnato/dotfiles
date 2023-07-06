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

# Setup neovim
echo -n "Checking if neovim is installed..."
if ! command -v nvim &> /dev/null; then
	echo "missing!"
	installPackage neovim
	cd /home/$SUDO_USER
	ln -sv /home/$SUDO_USER/dotfiles/vim.lua vim.lua
	ln -sv /home/$SUDO_USER/dotfiles/vimConfig vimConfig
	mkdir /home/$SUDO_USER/.config/nvim
	touch /home/$SUDO_USER/.config/nvim/init.lua
	echo "package.path = package.path .. ';/home/$SUDO_USER/?.lua'" >> home/$SUDO_USER/.config/nvim/init.lua
	echo "require('vim')" >> home/$SUDO_USER/.config/nvim/init.lua
else
	echo "already installed!"
fi

# Setup Zsh
echo -n "Checking if zsh is installed..."
if ! command -v zsh &> /dev/null; then
	echo "missing!"
	installPackage zsh
	cd /home/$SUDO_USER
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

# Setup dotfile submodules
echo "Setting up dotfile submodules"
cd /home/$SUDO_USER/dotfiles
git submodule init
git submodule update

echo "Please note that installing Oh my Zsh doesn't work with this script."
echo "You'll need to do that yourself, but we'll set the P10K config symlink for you"
cd /home/$SUDO_USER/.oh-my-zsh/custom/themes
ln -sv /home/$SUDO_USER/dotfiles/themes/powerlevel10k powerlevel10k
