#!/bin/bash

if [ -s ~/.bashrc ]; then
    echo "Found existing .bashrc file. Would you like to [d]elete it or [r]ename it to .bashrc.old before creating a new symlink?"
    read rsp
    case $rsp in
        [Dd]* ) rm ~/.bashrc;;
        [Rr]* ) mv ~/.bashrc ~/.bashrc.old;;
        * ) echo "canceled."; exit;;
    esac
fi
ln -s $(pwd)/.bashrc ~/.bashrc

if [ -s ~/.vimrc ]; then
    echo "Found existing .vimrc file. Would you like to [d]elete it or [r]ename it to .vimrc.old before creating a new symlink?"
    read rsp
    case $rsp in
        [Dd]* ) rm ~/.vimrc;;
        [Rr]* ) mv ~/.vimrc ~/.vimrc.old;;
        * ) echo "canceled."; exit;;
    esac
fi
ln -s $(pwd)/init.vim ~/.vimrc

if [ -d ~/.config/nvim ]; then
    if [ -s ~/.config/nvim/init.vim ]; then
        echo "Found existing init.vim file. Would you like to [d]elete it or [r]ename it to init.vim.old before creating a new symlink?"
        read rsp
        case $rsp in
            [Dd]* ) rm ~/.config/nvim/init.vim;;
            [Rr]* ) mv ~/.config/nvim/init.vim ~/.config/nvim/init.vim.old;;
            * ) echo "canceled."; exit;;
        esac
    fi
    
    ln -s $(pwd)/init.vim ~/.config/nvim/init.vim
fi

if command -v i3 > /dev/null; then
    if [ -s ~/.config/.config/i3/config ]; then
        echo "Found existing i3 config file. Would you like to [d]elete it or [r]ename it to config.old before creating a new symlink?"
        read rsp
        case $rsp in
            [Dd]* ) rm ~/.config/.config/i3/config;;
            [Rr]* ) mv ~/.config/.config/i3/config ~/.config/.config/i3/config.old;;
            * ) echo "canceled."; exit;;
        esac
    fi
    ln -s $(pwd)/i3_config ~/.config/i3/config
fi
