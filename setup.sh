#! /usr/bin/zsh

function installPackage {
	packageName=$1
	distro=$(cat /etc/*-release | head -1)
	
	if [ $distro = 'Manjaro Linux' ]; then
		sudo pacman -Sy packageName
	fi;
}


# Setup terminator
installPackage terminator
cd ~/.config
ln -sv ~/dotfiles/terminator terminator

