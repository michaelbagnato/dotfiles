#! /usr/bin/zsh

function installPackage {
	packageName=$1
	distro=$(cat /etc/*-release | head -1)
	
	if [[ $distro == 'Manjaro Linux' || $distro == 'Arch Linux' ]]; then
		sudo pacman -Sy packageName
	fi;
}

# Icon installation
# TODO Adjust for various distros, and for various window environents
vared -p "Do you want to install icons? (y/N)" iconAnswer
if [ $iconAnswer = 'y']; then
	sudo yay -S oie-icons-git
	/usr/lib/plasma-changeicons OieIcons
fi


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

