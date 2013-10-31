dotfiles
========

My configuration files.

## Requirements
Known to work under the following versions:

* Mac OS X 10.9
* Stow 2.2.0
* Git 1.8.3.4

## Install
Download dotfiles repo and init git submodules:

    cd ~
    git clone git://github.com/lyridious/dotfiles.git .dotfiles
    cd .dotfiles
    git submodule update --init --recursive
    
Install desired stow packages:
    
    cd ~/.dotfiles
    stow zsh
    
Or all packages:
    
    cd ~/.dotfiles
    make install
    
## Uninstall
Single stow package:
    
    cd ~/.dotfiles
    stow --delete zsh
    
Uninstall everything:

    cd ~/.dotfiles
    make uninstall
