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
