#!/bin/bash
echo "Installing brew stuff"
bash brew.sh
echo "Done installing brew stuff"

echo "Symlinking config files"
ln -sv ~/bch0ng-dotfiles/.zshrc ~
ln -sv ~/bch0ng-dotfiles/.tmux.conf ~
ln -sv ~/bch0ng-dotfiles/.vimrc ~
echo "Done symlinking config files"

echo "Installing Zsh stuff"
bash zsh.sh
echo "Done installing zsh stuff"
