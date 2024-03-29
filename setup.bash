#!/bin/bash

## MUST BE RUN FROM INSIDE vim-config DIRECTORY

# first, make the backup directory
mkdir -p ~/.backup

#then, backup and copy the .vimrc and .vim_runtime 
if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.bak
fi

rm -rf ~/.vim_runtime

cp .vimrc ~/.vimrc
cp vim_runtime ~/.vim_runtime -r

cat ~/.hwdir > /dev/null || touch ~/.hwdir

# copy bash configs 

if [ -f ~/.bashrc ]; then
	mv ~/.bashrc ~/.bashrc.bak
fi
cp bash_config/.bashrc ~/.bashrc


if [ -f ~/.bash_aliases ]; then
	mv ~/.bash_aliases ~/.bash_aliases.bak
fi
cp bash_config/.bash_aliases ~/.bash_aliases

# setup git prompt
cp ./bash_config/git-prompt.sh ~/.git-prompt.sh


# source the final script
source ~/.bashrc

echo "DONE"
