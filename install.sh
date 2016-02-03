#!/bin/bash
#Use this script to install my config files and symlink them together

##Variables
dir=~/dotfiles
oldF=~/dotfiles_old		#This creates a back up of the files
files="tmux-powerline vimrc tmux.conf"


#create the back dir in the home dir
echo "creating $oldF for backup of any exsisiting files"
mkdir -p $oldF
echo "finished"

#move any old files to the back dir and symlink the new ones
for file in $files; do
	echo "moving old files from ~ to $oldF"
	mv ~/.$file ~/dotfiles_old/
	echo "Making the symlink"
	ln -s $dir/.$file ~/.$file
done
